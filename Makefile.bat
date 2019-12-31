echo off
set b=%cd%
if "%1"=="dev" docker run -it -v "%b%":/projects -p 8080:8080 zhangqi12345/jarvis:0.1 npm run serve
if "%1"=="build" docker run -it -v "%b%":/projects -p 8080:8080 zhangqi12345/jarvis:0.1 npm run build
if "%1"=="lint" docker run -it -v "%b%":/projects -p 8080:8080 zhangqi12345/jarvis:0.1 npm run lint
if "%1"=="install" docker run -it -v "%b%":/projects -p 8080:8080 zhangqi12345/jarvis:0.1 yarn install