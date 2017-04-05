misc
findElementByPartialLinkText: nameString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#findElement(org.openqa.selenium.By)
	"
	
	^ self findElementBy: 'partial link text' with: nameString
