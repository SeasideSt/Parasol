misc
close

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.html#close()
	"

	self handleResponse: (self httpDelete: (self baseSessionURL , 'window')) onSuccess: [ :result | "do nothing with the result" ]