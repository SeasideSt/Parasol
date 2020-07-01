misc
doubleClick: webElement

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/interactions/Actions.html#doubleClick()
	"
	
	self
		moveToElement: webElement;
		doubleClick.
