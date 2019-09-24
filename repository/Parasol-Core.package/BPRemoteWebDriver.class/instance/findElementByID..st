misc
findElementByID: idString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementById(java.lang.String)
	"
	
	^ self findElementByCSSSelector: (self privateCSSSelectorFindByID: idString)