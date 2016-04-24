misc
findElementByXPath: xpathString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#findElement(org.openqa.selenium.By)
	"
	
	^ self findElementBy: 'xpath' with: xpathString
