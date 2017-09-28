misc
quit

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.html#quit()
	"

	self handleResponse: (self httpDelete: self baseSessionURL allButLast)
