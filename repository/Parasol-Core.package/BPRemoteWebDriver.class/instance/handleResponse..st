private
handleResponse: response

	(response httpStatus ~= 204) ifTrue: [
		self handleResponse: response onSuccess: [ :result | (result at: 'value') ifNotNil: [ self error: 'Value unexpectedly not JSON null' ] ].
	]