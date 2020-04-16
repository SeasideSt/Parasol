accessing
implicitlyWait: duration
	"
		http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.RemoteWebDriverOptions.RemoteTimeouts.html#implicitlyWait(long,%20java.util.concurrent.TimeUnit)
	"
 
	driver
		httpPostHandleResponse: driver baseSessionURL , 'timeouts'
		jsonData: (Dictionary new
			at: 'implicit' put: duration asMilliSeconds;
			yourself)
