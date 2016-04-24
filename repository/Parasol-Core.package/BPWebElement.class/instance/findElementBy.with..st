private
findElementBy: selectorString with: valueString

	^driver handleResponse: (driver
				httpPost: (self baseElementURL , 'element')
				jsonData: (Dictionary new
						at: 'using' put: selectorString;
						at: 'value' put: valueString;
						yourself))
		onSuccess: 
			[:result |
			self class driver: driver elementID: ((result at: 'value') at: 'ELEMENT')]