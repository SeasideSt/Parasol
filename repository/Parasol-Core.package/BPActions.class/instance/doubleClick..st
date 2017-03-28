misc
doubleClick: webElement

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/interactions/Actions.html#doubleClick()
	"
	
	self
		moveToElement: webElement;
		doubleClick.