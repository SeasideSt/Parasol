misc
findElementsByClassName: nameString

	"
https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementsByClassName(java.lang.String)
	"
	
	^ self findElementsByCSSSelector: (self privateCSSSelectorFindByClassName: nameString)