misc
getPageSource
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.html#getPageSource()
	"

	^self httpGetHandleResponse: self baseSessionURL , 'source'
		onSuccess: [:result | result at: 'value']