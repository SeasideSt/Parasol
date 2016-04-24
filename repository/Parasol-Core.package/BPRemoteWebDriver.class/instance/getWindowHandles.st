misc
getWindowHandles
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.html#getWindowHandles()
	"

	^self httpGetHandleResponse: self baseSessionURL , 'window_handles'
		onSuccess: [:result | result at: 'value']