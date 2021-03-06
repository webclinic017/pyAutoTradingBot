#!/bin/bash

export PYTHONPATH=src

source ./env/bin/activate

source ./clean_notebooks.sh

cd src/strategies/B3/WDOL/02.candle_strategy

jupyter nbconvert --inplace --to notebook --ExecutePreprocessor.timeout=-1 --execute 02.candle_strategy_0100_create_dataframe.ipynb
 
jupyter nbconvert --inplace  --to notebook --ExecutePreprocessor.timeout=-1 --execute 02.candle_strategy_0200_create_xgbooster.ipynb

jupyter nbconvert --inplace  --to notebook --ExecutePreprocessor.timeout=-1 --execute 02.candle_strategy_0300_find_decision_boundary.ipynb

jupyter nbconvert --inplace  --to notebook --ExecutePreprocessor.timeout=-1 --execute 02.candle_strategy_0400_forward_testing.ipynb

cd ../../../../..

source ./clean_notebooks.sh
