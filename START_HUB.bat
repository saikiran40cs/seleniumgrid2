TITLE SELENIUM_HUB_3.13.0

set HERE=%CD%
set JAVA_HOME=%JAVA_HOME%
set PATH=%JAVA_HOME%\jre\bin;%JAVA_HOME%\bin;%PATH%
set SELENIUM_VERSION=3.13.0
set HOST=localhost
set PORT=4444

java -jar selenium-server-standalone-%SELENIUM_VERSION%.jar -role hub -host %HOST% -port %PORT% -timeout 3000 -browserTimeout 3600 -log gridLogs\hub.log3.1
