misc
contextClick: webElement

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/interactions/Actions.html#contextClick(org.openqa.selenium.WebElement)
	"
	
	self moveToElement: webElement.
	action addAction: (BPClickAction driver: driver buttonNumber: 2).