misc
executeScript: scriptString with: arguments
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#executeScript(java.lang.String,%20java.lang.Object...)
	"

	self
		flag: 'Check whether this implementation matches the description of the original Java method'.
	^self handleResponse: (self
				httpPost: (self baseSessionURL , 'execute/sync')
				jsonData: (Dictionary new
						at: 'script' put: scriptString;
						at: 'args' put: arguments asScriptArgumentJSON;
						yourself))
		onSuccess: [:result | self privateConvertScriptReturnValue: (result at: 'value') ]