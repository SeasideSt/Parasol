misc
getSize
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#getSize()
	"

	^driver httpGetHandleResponse: self baseElementURL , 'rect'
		onSuccess: 
			[:result |
			((result at: 'value') at: 'width') @ ((result at: 'value') at: 'height')]