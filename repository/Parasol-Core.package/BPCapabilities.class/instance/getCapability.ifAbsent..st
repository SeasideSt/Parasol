misc
getCapability: capabilityName ifAbsent: aBlock

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/remote/DesiredCapabilities.html#getCapability(java.lang.String)
	"
	
	^ dict at: capabilityName ifAbsent: aBlock