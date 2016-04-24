initialize-release
initWithElement: initializationElement

	self flag: 'This is supposed throw an exception if the element''s tag is not SELECT, http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/support/ui/Select.html#Select(org.openqa.selenium.WebElement)'.
	
	self initialize.
	element := initializationElement.