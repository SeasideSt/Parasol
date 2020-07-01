misc
getPosition
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.Window.html#getPosition()
	"

	^driver httpGetHandleResponse: self baseURL , 'rect'
		onSuccess: 
			[:result |
			Point x: ((result at: 'value') at: 'x') y: ((result at: 'value') at: 'y')]