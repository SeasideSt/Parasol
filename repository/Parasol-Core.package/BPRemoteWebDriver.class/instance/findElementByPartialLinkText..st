misc
findElementByPartialLinkText: textString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementByPartialLinkText(java.lang.String)
	"

	^ self findElementBy: 'partial link text' with: textString
