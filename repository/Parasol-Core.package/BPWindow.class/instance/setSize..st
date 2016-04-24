misc
setSize: point
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.Window.html#setSize(org.openqa.selenium.Dimension)
	"

	driver httpPostHandleResponse: (self baseURL , 'size')
		jsonData: (Dictionary new
				at: 'width' put: point x;
				at: 'height' put: point y;
				yourself)