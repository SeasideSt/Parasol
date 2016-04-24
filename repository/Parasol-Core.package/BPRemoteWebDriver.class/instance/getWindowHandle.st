misc
getWindowHandle
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.html#getWindowHandle()
	"

	^self httpGetHandleResponse: self baseSessionURL , 'window_handle'
		onSuccess: [:result | result at: 'value']