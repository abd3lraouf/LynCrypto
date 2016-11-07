@echo off
if "%JAVA_HOME%" == "" goto nojavahome

echo LynCrypto v0.1 - alpha
echo Using JAVA_HOME            :   %JAVA_HOME%

echo Please Edit "config.properties" first
timeout /t -1

"%JAVA_HOME%/bin/java.exe" -jar LynCrypto.jar
timeout /t -1
goto exit

:nojavahome
echo The JAVA_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program.
timeout /t -1
goto exit

:exit