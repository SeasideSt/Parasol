misc.
activeElement

	"
		http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/WebDriver.TargetLocator.html#activeElement--
	"

	^ driver httpGetHandleResponse: (driver baseSessionURL , 'element/active')
		onSuccess: [ :result |
			BPWebElement driver: driver elementID: ((result at: 'value') at: BPWebElement privateWebElementIdentifier) ]