misc
findElementsByTagName: nameString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#findElements(org.openqa.selenium.By)
	"
	
	^ self findElementsBy: 'tag name' with: nameString
