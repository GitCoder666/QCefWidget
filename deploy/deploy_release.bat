@echo off

set QT_DIR=D:\Qt-5.14.2\5.14.2\msvc2017
set PATH=%QT_DIR%\bin;%PATH%


rmdir %~dp0output-release /S /Q
mkdir %~dp0output-release

copy %~dp0..\out\QCefWidgetTest\Release\QCefWidgetTest.exe %~dp0output-release\QCefWidgetTest.exe


start "" /WAIT windeployqt.exe %~dp0output-release\QCefWidgetTest.exe

xcopy %~dp019041_X86_RELEASE_DLL_FILES\* %~dp0output-release\ /E /Y

xcopy %~dp0..\out\QCefWidget\bin\Release\* %~dp0output-release\ /E /Y

xcopy %~dp03rd\Release\* %~dp0output-release\ /E /Y

xcopy %~dp0..\test\TestResource\* %~dp0output-release\TestResource\ /E /Y

pause