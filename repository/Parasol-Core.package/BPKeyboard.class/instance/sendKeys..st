misc
sendKeys: keyString
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/Keyboard.html#sendKeys(java.lang.CharSequence...)
	"

	| keyArray |
	keyArray := keyString asArray collect: [:char | String with: char].
	driver httpPostHandleResponse: driver baseSessionURL , 'keys'
		jsonData: ((Dictionary new)
				at: 'value' put: keyArray;
				yourself)