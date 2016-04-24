misc
findElementByName: nameString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementByName(java.lang.String)
	"

	^ self findElementBy: 'name' with: nameString

