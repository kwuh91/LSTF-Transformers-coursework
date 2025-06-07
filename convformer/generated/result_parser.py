import re
from collections import defaultdict
import pprint

def parse_results(file_path):
    # Regex to capture mse and mae values
    metric_pattern = re.compile(r"mse:(?P<mse>[0-9]*\.?[0-9]+), mae:(?P<mae>[0-9]*\.?[0-9]+)")
    # Regex to strip the Exp suffix from config identifiers
    exp_pattern = re.compile(r"_Exp_\d+$")

    # Temporary storage: config_str -> list of (mse, mae)
    raw_results = defaultdict(list)
    prev_config = None

    with open(file_path, 'r') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            match = metric_pattern.search(line)
            if match and prev_config is not None:
                mse = float(match.group('mse'))
                mae = float(match.group('mae'))
                raw_results[prev_config].append((mse, mae))
                prev_config = None
            else:
                # Strip Exp suffix to group all runs of same config
                config_raw = line
                config = exp_pattern.sub('', config_raw)
                prev_config = config

    # Compute averages
    averaged = {}
    for config, values in raw_results.items():
        count = len(values)
        avg_mse = sum(m for m, _ in values) / count
        avg_mae = sum(a for _, a in values) / count
        averaged[config] = {
            'avg_mse': avg_mse,
            'avg_mae': avg_mae,
            'count': count
        }

    return averaged


if __name__ == '__main__':
    import sys
    # Default input file
    input_file = sys.argv[1] if len(sys.argv) > 1 else 'result.txt'
    averages = parse_results(input_file)
    pprint.pprint(averages)  # Pretty-print the averaged results
