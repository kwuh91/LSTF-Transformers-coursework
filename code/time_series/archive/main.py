"""
import libraries
""" 
import pandas as pd

import matplotlib.pyplot as plt
import matplotlib.dates as mdates
import matplotlib.font_manager as fm

import seaborn as sns

from dataclasses import dataclass

from typing import Callable, Optional

"""
set constants
""" 
# paths
FONT_PATH     = '../extra/Cinzel-VariableFont_wght.ttf'
DATASETS_PATH = '../data/'
IMAGES_PATH   = '../images/'
# colors
RED        = '#6F1D1B'
RICH_BLACK = '#011627'
# font size
SIZE_TICKS = 12


""" 
connect fonts
""" 
cinzel_font = fm.FontProperties(fname=FONT_PATH)
fm.fontManager.addfont(FONT_PATH)


"""
Class definition for plots
""" 
class TimeSeries:
    # constructor
    def __init__(self, dataName:  str, 
                       dateName:  str, 
                       valueName: str, 
                       dateFormat: Optional[str] = None,
                       process:    Optional[Callable[[pd.DataFrame], pd.DataFrame]] = None):
        # initialize class fields
        self.data = TimeSeries.__get_df(dataName, dateName)
        self.dateName = dateName
        self.valueName = valueName

        # process data if needed
        if process:
            self.data = process(self.data)

        # set correct date format
        if dateFormat:
            self.data[dateName] = pd.to_datetime(self.data[self.dateName], format=dateFormat)
        self.data.sort_values(self.dateName, inplace=True)
        self.data.set_index(self.dateName, inplace=True)


    # helper function to decorate plots
    @staticmethod
    def __decorate(ax: plt.Axes, xname: str, yname: str, loc=None):
        # Eliminate upper and right axes
        ax.spines['right'].set_color('none')
        ax.spines['top'].set_color('none')

        # Show ticks in the left and lower axes only
        ax.xaxis.set_ticks_position('bottom')
        ax.yaxis.set_ticks_position('left')

        # x axis name
        ax.set_xlabel(xname, fontsize=15)

        # y axis name
        ax.set_ylabel(yname, fontsize=15)

        # Adjust the font size of the tick labels
        ax.tick_params(axis='both', which='major', labelsize=SIZE_TICKS)

        if loc:
            plt.legend(fontsize=10, loc=loc)

        # Update font settings
        plt.rcParams.update({
            "font.family": cinzel_font.get_name(), 
            "font.size": 16
        })

        # Adjust layout
        plt.tight_layout()


    # helper function to display every year on a plot
    @staticmethod
    def __normalizeDate(ax):
        year_locator = mdates.YearLocator()
        year_formatter = mdates.DateFormatter('%Y')
        ax.xaxis.set_major_locator(year_locator)
        ax.xaxis.set_major_formatter(year_formatter)


    # helper function to retrieve dataframe
    @staticmethod
    def __get_df(dataset_name: str, date_name: str) -> pd.DataFrame:
        return pd.read_csv(DATASETS_PATH + dataset_name + '.csv', parse_dates=[f'{date_name}'])


    # plot time series
    def plot_time_series(self, xname: str, 
                               yname: str, 
                               title: str, 
                               save=False, 
                               normalize_date=False, 
                               show=False,
                               figsize=(15, 6)) -> None:
        fig, ax = plt.subplots(figsize=figsize)

        ax.plot(self.data.index, 
                self.data[self.valueName], 
                color=RED)

        ax.set_title(title)

        TimeSeries.__decorate(ax, xname, yname)

        if normalize_date:
            TimeSeries.__normalizeDate(ax)

        if save:
            plt.savefig(f'{IMAGES_PATH}time_series_example_{title.replace(" ", "_").lower()}', 
                        dpi=300, 
                        transparent=True)

        if show:
            plt.show()
        else:
            plt.close(fig)


    # lag plot
    # correlation matrix
    # acf


if __name__ == '__main__':

    """
    France Electricity Consumption
    """ 
    def process_france(df):
        return df[(df['country_name'] == 'France') & 
                  (df['product'] == 'Electricity') & 
                  (df['parameter'] == 'Final Consumption (Calculated)')].copy()

    # create an object
    obj = TimeSeries(dataName='global_electricity_production_data',
                     dateName='date',
                     valueName='value',
                     dateFormat='%m/%d/%Y',
                     process=process_france)

    # plot time series
    obj.plot_time_series(xname='Month',
                         yname='Value (GWh)',
                         title='France Electricity Consumption',
                         normalize_date=True,
                         show=True)


    """
    Avocado Sales
    """
    def process_avocado(df):
        return df.groupby('Date')['Total Volume'].mean().reset_index()

    # create an object
    obj = TimeSeries(dataName='avocado',
                     dateName='Date',
                     valueName='Total Volume',
                     dateFormat='%Y-%m-%d',
                     process=process_avocado)

    # plot time series
    obj.plot_time_series(xname='Year',
                         yname='Total Number Of Avocados Sold',
                         title='Avocado Sales',
                         normalize_date=False,
                         show=True)


    """
    Gold Price
    """
    def process_gold(df):
        df['USD'] = df['USD'].str.replace(',', '').astype(float)
        return df

    # create an object
    obj = TimeSeries(dataName='gold_prices_quarterly',
                     dateName='Date',
                     valueName='USD',
                     dateFormat='%m/%d/%Y',
                     process=process_gold)

    # plot time series
    obj.plot_time_series(xname='Year',
                         yname='Gold Price (USD)',
                         title='Gold Price',
                         normalize_date=False,
                         show=True)


    """
    Wine Australia
    """
    # create an object
    obj = TimeSeries(dataName='AusWineSales',
                     dateName='YearMonth',
                     valueName='Red',
                     dateFormat='%Y-%m')

    # plot time series
    obj.plot_time_series(xname='Year',
                         yname='Wine Sales (Volume)',
                         title='Australian Wine Sales',
                         normalize_date=True,
                         show=True,
                         save=False)


    # """
    # Hourly Energy Consumption
    # """
    # def process_energy(df):
    #     return df.loc[f'2004']
    # # create an object
    # obj = TimeSeries(dataName='AEP_hourly',
    #                  dateName='Datetime',
    #                  valueName='AEP_MW',
    #                  dateFormat='%Y-%m-%d %H:%M:%S',
    #                  process=process_energy)

    # # plot time series
    # obj.plot_time_series(xname='Year',
    #                      yname='Energy Consumption (MW)',
    #                      title='Hourly American Electric Power Consumption',
    #                      normalize_date=True,
    #                      show=True)
