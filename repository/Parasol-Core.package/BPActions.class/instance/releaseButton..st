misc
releaseButton: webElement

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/interactions/Actions.html#release(org.openqa.selenium.WebElement)
	"
	
	self
		moveToElement: webElement;
		releaseButton.