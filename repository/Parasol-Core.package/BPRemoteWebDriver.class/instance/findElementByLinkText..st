misc
findElementByLinkText: textString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementByLinkText(java.lang.String)
	"

	^ self findElementBy: 'link text' with: textString