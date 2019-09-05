misc
findElementsByClassName: nameString

	"
http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementsByClassName(java.lang.String)
	"
	
	^ self findElementsByCSSSelector: (self privateCSSSelectorFindByClassName: nameString)