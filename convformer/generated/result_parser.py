import re
from collections import defaultdict
import pprint

def parse_results(file_path):
    # Regex to strip the _Exp_ suffix from config identifiers
    exp_pattern = re.compile(r"_Exp_\d+$")
    # Regex to capture any metric of the form key:value (e.g. mse:0.123, mape:4.56, etc.)
    metric_pattern = re.compile(r"(?P<key>\w+):(?P<value>[0-9]*\.?[0-9]+)")

    # Temporary storage: config_str -> list of {metric_name: value, ...}
    raw_results = defaultdict(list)
    prev_config = None

    with open(file_path, 'r') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            # Heuristic: config lines have no ':' or don't match metric_pattern
            if not metric_pattern.search(line):
                # Strip Exp suffix to group all runs of same config
                config_raw = line
                config = exp_pattern.sub('', config_raw)
                prev_config = config
            else:
                # Metrics line
                if prev_config is None:
                    # No config to attach to—skip
                    continue

                matches = metric_pattern.finditer(line)
                metrics = {}
                for m in matches:
                    key = m.group('key').lower()
                    value = float(m.group('value'))
                    metrics[key] = value

                # Only store if we found at least mse and mae
                if 'mse' in metrics and 'mae' in metrics:
                    raw_results[prev_config].append(metrics)
                prev_config = None

    # Compute averages
    averaged = {}
    for config, runs in raw_results.items():
        count = len(runs)
        # Initialize sums
        sums = defaultdict(float)
        for run in runs:
            for key, val in run.items():
                sums[key] += val

        # Build the averaged dict
        avg_dict = {'count': count}
        for metric in ['mse', 'mae', 'rmse', 'mape', 'mspe']:
            if metric in sums:
                avg_dict[f'avg_{metric}'] = sums[metric] / count
            else:
                avg_dict[f'avg_{metric}'] = None  # or float('nan')

        averaged[config] = avg_dict

    return averaged


if __name__ == '__main__':
    import sys
    # Default input file
    input_file = sys.argv[1] if len(sys.argv) > 1 else 'result.txt'
    averages = parse_results(input_file)
    pprint.pprint(averages)  # Pretty-print the averaged results
