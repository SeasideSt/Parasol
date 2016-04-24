misc
executeScript: scriptString with: arguments
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#executeScript(java.lang.String,%20java.lang.Object...)
	"

	self
		flag: 'Check whether this implementation matches the description of the original Java method'.
	self
		flag: 'One point definitely missing is that this does not yet handle converting an {ELEMENT: ....} thingy back to a WebElement.'.
	^self handleResponse: (self
				httpPost: (self baseSessionURL , 'execute')
				jsonData: (Dictionary new
						at: 'script' put: scriptString;
						at: 'args' put: arguments;
						yourself))
		onSuccess: [:result | result at: 'value']