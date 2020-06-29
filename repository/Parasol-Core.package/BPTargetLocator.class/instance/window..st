misc.
window: windowHandle
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.TargetLocator.html#window(java.lang.String)
	"

	driver httpPostHandleResponse: driver baseSessionURL , 'window'
		jsonData: ((Dictionary new)
				at: 'handle' put: windowHandle;
				yourself)