private
findElementsByTagName: tagNameString

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementsByTagName(java.lang.String)
	"

	^ self findElementsBy: 'tag name' with: tagNameString
