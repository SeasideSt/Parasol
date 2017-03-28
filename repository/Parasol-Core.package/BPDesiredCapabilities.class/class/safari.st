predefined
safari

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/DesiredCapabilities.html#safari()
	"

	^ self new
		setCapability: 'browserName' to: 'safari';
		yourself