predefined
chrome

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/DesiredCapabilities.html#chrome()
	"

	^ self new
		setCapability: 'browserName' to: 'chrome';
		yourself
	