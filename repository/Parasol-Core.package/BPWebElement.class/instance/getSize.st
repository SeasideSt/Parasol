misc
getSize
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebElement.html#getSize()
	"

	^driver httpGetHandleResponse: self baseElementURL , 'rect'
		onSuccess: 
			[:result |
			((result at: 'value') at: 'width') @ ((result at: 'value') at: 'height')]