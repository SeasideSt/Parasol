navigation
goForward
	^ self 
		httpPostHandleResponse:(self baseSessionURL , 'forward') 
		jsonData: Dictionary new