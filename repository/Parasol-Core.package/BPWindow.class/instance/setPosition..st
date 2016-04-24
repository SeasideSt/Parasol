misc
setPosition: point
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.Window.html#setPosition(org.openqa.selenium.Point)
	"

	driver httpPostHandleResponse: (self baseURL , 'position')
		jsonData: (Dictionary new
				at: 'x' put: point x;
				at: 'y' put: point y;
				yourself)