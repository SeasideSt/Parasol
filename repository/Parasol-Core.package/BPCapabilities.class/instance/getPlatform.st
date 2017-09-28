misc
getPlatform

	"http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/remote/DesiredCapabilities.html#getPlatform--"

	^ BPPlatform fromString: (self getCapability: 'platform')
