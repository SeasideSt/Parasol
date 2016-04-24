misc
findElementsByXPath: tagNameString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementsByXPath(java.lang.String)
	"

	^ self findElementsBy: 'xpath' with: tagNameString