misc
close

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebDriver.html#close()
	"

	self handleResponse: (self httpDelete: (self baseSessionURL , 'window'))