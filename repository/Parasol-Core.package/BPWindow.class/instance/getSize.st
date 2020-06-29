misc
getSize
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.Window.html#getSize()
	"

	^driver httpGetHandleResponse: self baseURL , 'rect'
		onSuccess: 
			[:result |
			Point x: ((result at: 'value') at: 'width')
				y: ((result at: 'value') at: 'height')]