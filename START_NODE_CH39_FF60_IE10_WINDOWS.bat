TITLE START_NODE_CH39_FF60_IE10

set HERE=%CD%
set JAVA_HOME=%JAVA_HOME%
set PATH=%JAVA_HOME%\jre\bin;%JAVA_HOME%\bin;%PATH%
set SELENIUM_VERSION=3.13.0
set PLATFORM=WINDOWS

set CHROME_VERSION=39
set CHROME_WEBDRIVER_VERSION=2.13
set CHROME_WEBDRIVER_LOC=%HERE%/chromeDrivers/%CHROME_WEBDRIVER_VERSION%/chromedriver.exe

set FIREFOX_VERSION=60
set FIREFOX_WEBDRIVER_VERSION=0.21
set FIREFOX_WEBDRIVER_LOC=%HERE%/firefoxDrivers/%FIREFOX_WEBDRIVER_VERSION%/geckodriver.exe

set IE_VERSION=10
set IE_WEBDRIVER_VERSION=3.13
set IE_WEBDRIVER_LOC=%HERE%/ieDrivers/%IE_WEBDRIVER_VERSION%/IEDriverServer.exe

set HUB_HOST=localhost
set HUB_PORT=4444
set HUB_URL=http://%HUB_HOST%:%HUB_PORT%/grid/register

set NODE_HOST=localhost
set NODE_PORT=5557

java -Dwebdriver.chrome.driver=%CHROME_WEBDRIVER_LOC% -Dwebdriver.ie.driver=%IE_WEBDRIVER_LOC% -Dwebdriver.gecko.driver=%FIREFOX_WEBDRIVER_LOC% -jar selenium-server-standalone-%SELENIUM_VERSION%.jar -role node -hub %HUB_URL% -host %NODE_HOST% -port %NODE_PORT% -browser "browserName=firefox,version=%FIREFOX_VERSION%,maxInstances=5,platform=%PLATFORM%" -browser "browserName=chrome,version=%CHROME_VERSION%,maxInstances=5,platform=%PLATFORM%" -browser "browserName=internet explorer,version=%IE_VERSION%,maxInstances=5,platform=%PLATFORM%" -log gridLogs\selnode-%NODE_PORT%.log
