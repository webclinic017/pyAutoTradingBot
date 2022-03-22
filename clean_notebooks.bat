set PYTHONPATH=src

call .\env\Scripts\activate.bat 

jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace .\src\strategies\B3\WDOL\02.candle_strategy\02.candle_strategy_0100_create_dataframe.ipynb
 
jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace .\src\strategies\B3\WDOL\02.candle_strategy\02.candle_strategy_0200_create_xgbooster.ipynb

jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace .\src\strategies\B3\WDOL\02.candle_strategy\02.candle_strategy_0300_find_decision_boundary.ipynb

jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace .\src\strategies\B3\WDOL\02.candle_strategy\02.candle_strategy_0400_forward_testing.ipynb

jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace .\src\strategies\B3\WDOL\02.candle_strategy\02.candle_strategy_0500_check_predict.ipynb

