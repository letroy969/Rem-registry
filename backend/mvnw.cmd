@ECHO OFF
REM Maven wrapper script for Windows.
SETLOCAL

SET MAVEN_WRAPPER_DIR=.mvn\wrapper
SET MAVEN_WRAPPER_JAR=%MAVEN_WRAPPER_DIR%\maven-wrapper.jar
SET MAVEN_WRAPPER_PROPERTIES=%MAVEN_WRAPPER_DIR%\maven-wrapper.properties

FOR /F "tokens=1,* delims==" %%A IN (%MAVEN_WRAPPER_PROPERTIES%) DO (
  IF "%%A"=="distributionUrl" SET distributionUrl=%%B
  IF "%%A"=="wrapperUrl" SET wrapperUrl=%%B
)

IF NOT EXIST "%MAVEN_WRAPPER_JAR%" (
  IF "%wrapperUrl%"=="" SET wrapperUrl=https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar
  ECHO Downloading Maven wrapper from %wrapperUrl%
  POWERSHELL -Command "(New-Object Net.WebClient).DownloadFile('%wrapperUrl%', '%MAVEN_WRAPPER_JAR%')"
)

SET JAVA_EXEC=java
IF NOT "%JAVA_HOME%"=="" SET JAVA_EXEC=%JAVA_HOME%\bin\java

"%JAVA_EXEC%" -jar "%MAVEN_WRAPPER_JAR%" -Dmaven.multiModuleProjectDirectory="%CD%" %*
ENDLOCAL
