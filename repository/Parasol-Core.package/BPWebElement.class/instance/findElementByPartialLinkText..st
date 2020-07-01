misc
findElementByPartialLinkText: nameString

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#findElement(org.openqa.selenium.By)
	"
	
	^ self findElementBy: 'partial link text' with: nameString
