misc
getCapability: capabilityName ifAbsent: aBlock

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/DesiredCapabilities.html#getCapability(java.lang.String)
	"
	
	^ dict at: capabilityName ifAbsent: aBlock