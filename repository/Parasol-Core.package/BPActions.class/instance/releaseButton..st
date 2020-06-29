misc
releaseButton: webElement

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/interactions/Actions.html#release(org.openqa.selenium.WebElement)
	"
	
	self
		moveToElement: webElement;
		releaseButton.