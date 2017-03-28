predefined
htmlUnit

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/DesiredCapabilities.html#htmlUnit()
	"

	^ self new
		setCapability: 'browserName' to: 'htmlunit';
		yourself