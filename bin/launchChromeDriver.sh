#!/usr/bin/env bash
#
#	Script for downloading and launching the ChromeDriver
#		The ChromeDriver needs to be running if you want to run the 
#		WAWebDriverFunctionalTestCase tests
#
#	This script is based on the .travis.yml script, the .travis.yml is the master
#		implementation
#
#	1. java is assumed to be on your path.
#	2. The CHROME_DRIVER_VERSION must match the version of Chrome that is installed
#			on your machine. 
#	3. You are responsible for cleaning up the .jar, .zip, .log, .txt, .lck, and
#			chromedriver files that are created in the directory where you launch
#			the script: 
#				rm -f chromedriver chromedriver_linux64.zip seleniumlog.txt selenium-server-standalone-3.141.59.jar
# 4. You are responsible for killing the java process when you are done
#			running tests.
#

if [ "$CHROME_DRIVER_VERSION"x = "x" ] ; then
	CHROME_DRIVER_VERSION=85.0.4183.87
fi

if [ ! -d "selenium-server-standalone-3.141.59.jar" ] ; then
	# download launch theselenium web driver
	wget http://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar
	wget https://chromedriver.storage.googleapis.com/${CHROME_DRIVER_VERSION}/chromedriver_linux64.zip
	unzip chromedriver_linux64.zip
fi

# LAUNCH the web driver
java -Dwebdriver.chrome.driver=chromedriver -Dwebdriver.chrome.logfile=chromedriver.log -Dwebdriver.chrome.args=--verbose -jar selenium-server-standalone-3.141.59.jar -port 4444 -log seleniumlog.txt &
