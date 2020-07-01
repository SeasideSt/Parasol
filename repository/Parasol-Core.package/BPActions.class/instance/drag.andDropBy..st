misc
drag: sourceWebElement andDropBy: aPoint

	"
https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/interactions/Actions.html#dragAndDropBy(org.openqa.selenium.WebElement,%20int,%20int)
	"
	
	self
		moveToElement: sourceWebElement offset: (1@1);
		clickAndHold;
		moveToElement: sourceWebElement offset: aPoint;
		releaseButton.