misc.
window: windowHandle
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.TargetLocator.html#window(java.lang.String)
	"

	driver httpPostHandleResponse: driver baseSessionURL , 'window'
		jsonData: ((Dictionary new)
				at: 'name' put: windowHandle;
				yourself)