misc
getTitle
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.html#getTitle()
	"

	^self httpGetHandleResponse: self baseSessionURL , 'title'
		onSuccess: [:result | result at: 'value']