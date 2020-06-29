misc
findElementByClassName: nameString

	"
https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementByClassName(java.lang.String)
	"
	
	^ self findElementByCSSSelector: (self privateCSSSelectorFindByClassName: nameString)