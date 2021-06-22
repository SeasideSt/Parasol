misc
getProperty: nameString
	"https://www.w3.org/TR/webdriver/#get-element-property"
	^ driver
		httpGetHandleResponse: (self baseElementURL , 'property/') , nameString
		onSuccess: [:result | (result at: 'value') ]