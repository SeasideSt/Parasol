private
findElementsBy: selectorString with: valueString

	^driver handleResponse: (driver
				httpPost: (self baseElementURL , 'elements')
				jsonData: (Dictionary new
						at: 'using' put: selectorString;
						at: 'value' put: valueString;
						yourself))
		onSuccess: 
			[:result |
			(result at: 'value')
				collect: [:e | self class driver: driver elementID: (e at: 'ELEMENT')]]