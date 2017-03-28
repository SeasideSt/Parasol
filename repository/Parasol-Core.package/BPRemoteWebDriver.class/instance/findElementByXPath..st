misc
findElementByXPath: xpathString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementByXPath(java.lang.String)
	"

	^ self findElementBy: 'xpath' with: xpathString