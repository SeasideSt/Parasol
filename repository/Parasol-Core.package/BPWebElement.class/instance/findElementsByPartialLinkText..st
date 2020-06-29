misc
findElementsByPartialLinkText: nameString

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#findElements(org.openqa.selenium.By)
	"
	
	^ self findElementsBy: 'partial link text' with: nameString
