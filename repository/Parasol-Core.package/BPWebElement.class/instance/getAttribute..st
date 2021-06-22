misc
getAttribute: nameString
	"https://www.w3.org/TR/webdriver/#get-element-attribute"
	^ driver
		httpGetHandleResponse: (self baseElementURL , 'attribute/') , nameString
		onSuccess: [:result | result at: 'value']