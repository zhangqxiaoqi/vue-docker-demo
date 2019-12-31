echo off
set b=%cd%
if "%1"=="create" docker run -it -v "%b%":/projects  zhangqi12345/jarvis:0.1 vue create %2%