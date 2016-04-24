misc
drag: sourceWebElement andDrop: targetWebElement

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/interactions/Actions.html#dragAndDrop(org.openqa.selenium.WebElement,%20org.openqa.selenium.WebElement)	
	"
	
	self
		clickAndHold: sourceWebElement;
		releaseButton: targetWebElement.