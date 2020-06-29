misc
findElementByPartialLinkText: textString

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementByPartialLinkText(java.lang.String)
	"

	^ self findElementBy: 'partial link text' with: textString
