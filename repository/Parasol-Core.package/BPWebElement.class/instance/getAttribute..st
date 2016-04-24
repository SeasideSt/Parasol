misc
getAttribute: nameString
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#getAttribute(java.lang.String)
	"

	self
		flag: 'Check whether this implementation matches the description of the original Java method'.
	^driver
		httpGetHandleResponse: (self baseElementURL , 'attribute/') , nameString
		onSuccess: [:result | result at: 'value']