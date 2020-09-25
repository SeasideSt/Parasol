private
handleResponse: response
	response httpStatus ~= 204
		ifTrue: [ self
				handleResponse: response
				onSuccess: [ :result | 
					(result at: 'value')
						ifNotNil:
							[ :value | value ifNotEmpty: [ self error: 'Value unexpectedly not JSON null' ] ] ] ]