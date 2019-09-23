misc
addCookie: cookie

	driver httpPostHandleResponse: driver baseSessionURL , 'cookie'
		jsonData: (Dictionary new
			at: 'cookie' put: (self privateJSONObjectFromCookie: cookie);
			yourself)