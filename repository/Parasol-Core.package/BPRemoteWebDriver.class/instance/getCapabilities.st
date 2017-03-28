misc
getCapabilities

	"http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#getCapabilities--"

	^ self httpGetHandleResponse: self baseSessionURL onSuccess: [ :result |
		BPCapabilities withDictionary: (result at: 'value') ]