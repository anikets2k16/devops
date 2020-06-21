@ECHO OFF

REM
REM	|--------------------------------------------------------------------------------------------------------------------
REM	| Purpose:			CMAR Automation Execution
REM	|
REM	| Ver.	Date			Author			
REM	| 1.00	19 JUN 2020		Varsha Shinde		
REM	|--------------------------------------------------------------------------------------------------------------------*/

REM setting the intial Parameters
	set Java_Dir="C:\Program Files\Java\jre1.8.0_251\bin\java.exe"
	set Groovy_Dir="D:\Program Files\Groovy-2.5.9\bin\groovy.exe"
	set LOGFILE="%CD%\scanner.log"

echo %LOGFILE%

REM Check if install logs already exist
IF EXIST %LOGFILE% (
	del %LOGFILE%
)

echo "-------------------------RUNNING PREREQUISITES-------------------------"
echo %DATE% %TIME%"-------------------------PREREQUISITES SCANNER-------------------------" >> %LOGFILE%
REM Check If Java is installed in the system
IF EXIST %Java_Dir% (
	echo -------------------------Checking Java Installation-------------------------
	echo %DATE% %TIME%"-------------------------Java is installed. Processing.........." >> %LOGFILE%
) ELSE (
	echo %DATE% %TIME%"echo -------------------------Java is Not Installed. Script will Fail " >> %LOGFILE%
)

REM Check If Maven is installed in the system
IF EXIST %Groovy_Dir% (
	echo %DATE% %TIME%"-------------------------Groovy is Installed. Processing......" >> %LOGFILE%
) ELSE (
	echo %DATE% %TIME%"-------------------------Groovy is Not Installed. Script will Fail ......." >> %LOGFILE%
)

REM	Check JAVA_HOME is set
IF "%JAVA_HOME%" == "" (
	echo %DATE% %TIME%"-------------------------JAVA_HOME not set........ " >> %LOGFILE%
) ELSE (
	echo JAVA_HOME=%JAVA_HOME%
	echo %DATE% %TIME%"JAVA_HOME is set to :"%JAVA_HOME% >> %LOGFILE%
)

REM	Check MAVEN_HOME is set
IF "%MAVEN_HOME%" == "" (
	echo %DATE% %TIME%"-------------------------MAVEN_HOME not set. Script will not work........" >> %LOGFILE%
) ELSE (
	echo MAVEN_HOME=%MAVEN_HOME%
	echo %DATE% %TIME%"MAVEN_HOME is set to :"%MAVEN_HOME% >> %LOGFILE%
)
REM cls
PAUSE
