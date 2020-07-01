misc
quit

	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/WebDriver.html#quit()
	"

	self handleResponse: (self httpDelete: self baseSessionURL allButLast)
