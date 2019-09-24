misc
moveToElement: webElement centerOffset: offset

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/interactions/Actions.html#moveToElement(org.openqa.selenium.WebElement,%20int,%20int)
	"
	
	action addAction: (BPMoveToOffsetAction driver: driver element: webElement offset: offset).
