misc
getPlatform

	"http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/remote/DesiredCapabilities.html#getPlatform--"

	^ BPPlatform valueOf: (self getCapability: 'platform')