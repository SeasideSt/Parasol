misc
setSize: point
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.Window.html#setSize(org.openqa.selenium.Dimension)
	"

	driver handleResponse: (driver
		httpPost: (self baseURL , 'rect')
		jsonData: (Dictionary new
			at: 'width' put: point x;
			at: 'height' put: point y;
			yourself))
		onSuccess: [ :result | ].
