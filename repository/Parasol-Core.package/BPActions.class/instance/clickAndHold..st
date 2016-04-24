misc
clickAndHold: webElement

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/interactions/Actions.html#clickAndHold(org.openqa.selenium.WebElement)
	"
	
	self
		moveToElement: webElement;
		clickAndHold.