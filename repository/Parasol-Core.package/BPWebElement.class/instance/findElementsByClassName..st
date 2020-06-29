misc
findElementsByClassName: nameString

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#findElements(org.openqa.selenium.By)
	"
	
	^ self findElementsByCSSSelector: (driver privateCSSSelectorFindByClassName: nameString)
