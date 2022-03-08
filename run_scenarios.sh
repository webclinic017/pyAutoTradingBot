#!/bin/bash

source ./env/bin/activate

source ./clean_notebooks.sh

export PYTHONPATH=$PWD/src

cd src/pyautotrader

export CURRENT_TARGET=0.8
export CURRENT_STOP=0.4

export CURRENT_5MIN_FILE_CSV='WDO$M5.csv'
export CURRENT_TIMEFRAME=5Min
export MAX_TRADE_DURATION=24
python __main__.py run_scenarios --minimum-interactions 2

export CURRENT_5MIN_FILE_CSV='WDO$M10.csv'
export CURRENT_TIMEFRAME=10Min
export MAX_TRADE_DURATION=12
python __main__.py run_scenarios --minimum-interactions 2

export CURRENT_5MIN_FILE_CSV='WDO$M15.csv'
export CURRENT_TIMEFRAME=15Min
export MAX_TRADE_DURATION=8
python __main__.py run_scenarios --minimum-interactions 2

cd ../strategies/B3/WDOL/00.data/






