misc
perform
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/interactions/Action.html#perform()
	"

	^driver httpPostHandleResponse: (driver baseSessionURL
				, self actionPathSegment)
		jsonData: arguments