predefined
firefox

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/DesiredCapabilities.html#firefox()
	"

	^ self new
		setCapability: 'browserName' to: 'firefox';
		yourself
	