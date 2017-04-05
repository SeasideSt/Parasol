private
findElementsByTagName: tagNameString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementsByTagName(java.lang.String)
	"

	^ self findElementsBy: 'tag name' with: tagNameString
