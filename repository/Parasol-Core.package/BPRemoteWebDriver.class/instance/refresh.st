navigation
refresh
	^ self 
		httpPostHandleResponse:(self baseSessionURL , 'refresh') 
		jsonData: Dictionary new