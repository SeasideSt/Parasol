navigation
goBack
	^ self 
		httpPostHandleResponse:(self baseSessionURL , 'back') 
		jsonData: Dictionary new