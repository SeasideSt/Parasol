misc
window

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.Options.html#window()
	"
	
	self flag: 'It is not clear in the Java documentation what is meant by the current window, current at the time of calling this method, or current at the time you are interacting with the window object? Note that in the wire protocol POST requests on /session/:sessionId/window/:windowHandle/size are allowed to use "current" for the windowHandle parameter'.
	^ BPWindow withDriver: driver handle: driver getWindowHandle