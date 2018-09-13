navigation
getCurrentURL

	"
		http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/WebDriver.html#getCurrentUrl--
	"

	^ self httpGetHandleResponse: (self baseSessionURL , 'url')
		onSuccess: [ :result | result at: 'value' ]