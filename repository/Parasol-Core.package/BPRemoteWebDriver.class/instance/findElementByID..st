misc
findElementByID: idString

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementById(java.lang.String)
	"
	
	^ self findElementByCSSSelector: (self privateCSSSelectorFindByID: idString)