misc.
selectByVisibleText: visibleText

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/support/ui/Select.html#selectByVisibleText(java.lang.String)
	"

	| options |
	
	self flag: 'This implementation is not complete, check the Java version'.
	
	options := (element findElementsByXPath: './/option[normalize-space(.)=''' , visibleText , ''']').
	options do: [ :option |
		option click.
	].