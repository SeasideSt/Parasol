misc
findElementByLinkText: textString

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#findElementByLinkText(java.lang.String)
	"

	^ self findElementBy: 'link text' with: textString
