misc
getText
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#getText()
	"

	^driver httpGetHandleResponse: self baseElementURL , 'text'
		onSuccess: [:result | result at: 'value']