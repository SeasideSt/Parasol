misc
setPosition: point
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.Window.html#setPosition(org.openqa.selenium.Point)
	"

	driver handleResponse: (driver
		httpPost: (self baseURL , 'rect')
		jsonData: (Dictionary new
			at: 'x' put: point x;
			at: 'y' put: point y;
			yourself))
		onSuccess: [ :result | ].
