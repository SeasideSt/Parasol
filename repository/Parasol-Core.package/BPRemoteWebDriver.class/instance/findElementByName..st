misc
findElementByName: nameString

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementByName(java.lang.String)
	"

	^ self findElementByCSSSelector: (self privateCSSSelectorFindByName: nameString)
