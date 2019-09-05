misc.
activeElement

	"
		http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/WebDriver.TargetLocator.html#activeElement--
	"

	^ driver handleResponse:
		(driver
			httpPost: (driver baseSessionURL , 'element/active')
			jsonData: (Dictionary new))
		onSuccess: [ :result |
			BPWebElement driver: driver elementID: ((result at: 'value') at: BPWebElement privateWebElementIdentifier) ]