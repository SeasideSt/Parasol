misc
findElementsByXPath: tagNameString

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementsByXPath(java.lang.String)
	"

	^ self findElementsBy: 'xpath' with: tagNameString