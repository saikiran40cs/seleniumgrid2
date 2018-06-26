TITLE START_NODE_CHROME_67

set HERE=%CD%
set JAVA_HOME=%JAVA_HOME%
set PATH=%JAVA_HOME%\jre\bin;%JAVA_HOME%\bin;%PATH%
set SELENIUM_VERSION=3.13.0
set PLATFORM=WIN10

set CHROME_VERSION=67
set CHROME_WEBDRIVER_VERSION=2.40
set CHROME_WEBDRIVER_LOC=%HERE%\CHROMEDRIVERS\%CHROME_WEBDRIVER_VERSION%\chromedriver.exe

set HUB_HOST=localhost
set HUB_PORT=4444
set HUB_URL=http://%HUB_HOST%:%HUB_PORT%/grid/register

set NODE_HOST=localhost
set NODE_PORT=5558

java -Dwebdriver.chrome.driver=%CHROME_WEBDRIVER_LOC% -jar selenium-server-standalone-%SELENIUM_VERSION%.jar -role node -hub %HUB_URL% -host %NODE_HOST% -port %NODE_PORT% -browser "browserName=chrome,version=%CHROME_VERSION%,maxInstances=5,platform=%PLATFORM%" -log gridLogs\selnode-%NODE_PORT%.log
