misc
getPosition
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.Window.html#getPosition()
	"

	^driver httpGetHandleResponse: self baseURL , 'rect'
		onSuccess: 
			[:result |
			Point x: ((result at: 'value') at: 'x') y: ((result at: 'value') at: 'y')]