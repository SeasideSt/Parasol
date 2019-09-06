misc
sendKeys: keyString
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/Keyboard.html#sendKeys(java.lang.CharSequence...)
	"

	^ driver switchTo activeElement sendKeys: keyString
