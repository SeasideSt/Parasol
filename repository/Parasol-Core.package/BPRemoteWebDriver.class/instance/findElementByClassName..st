misc
findElementByClassName: nameString

	"
http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementByClassName(java.lang.String)
	"
	
	^ self findElementByCSSSelector: '.' , nameString
