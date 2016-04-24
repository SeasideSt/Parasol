events
sendKeys: keyString
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html#sendKeys(java.lang.CharSequence...)
	"

	| keyArray |
	self
		flag: 'This may need to take something other than a string, to be able to send special key presses (like shift, command etc.)'.
	keyArray := keyString asArray collect: [:char | String with: char].
	driver
		httpPostHandleResponse: (self baseElementURL , 'value')
		jsonData: (Dictionary new
				at: 'value' put: keyArray;
				yourself)