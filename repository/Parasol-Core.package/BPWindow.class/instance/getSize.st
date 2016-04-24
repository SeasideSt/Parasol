misc
getSize
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.Window.html#getSize()
	"

	^driver httpGetHandleResponse: self baseURL , 'size'
		onSuccess: 
			[:result |
			Point x: ((result at: 'value') at: 'width')
				y: ((result at: 'value') at: 'height')]