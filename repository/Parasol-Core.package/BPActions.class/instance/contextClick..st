misc
contextClick: webElement

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/interactions/Actions.html#contextClick(org.openqa.selenium.WebElement)
	"
	
	self moveToElement: webElement.
	action addAction: (BPClickAction driver: driver buttonNumber: 2).