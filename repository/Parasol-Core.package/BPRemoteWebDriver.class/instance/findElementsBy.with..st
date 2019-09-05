private
findElementsBy: selectorString with: valueString

	^self handleResponse: (self
				httpPost: (self baseSessionURL , 'elements')
				jsonData: (Dictionary new
						at: 'using' put: selectorString;
						at: 'value' put: valueString;
						yourself))
		onSuccess: 
			[:result |
			(result at: 'value')
				collect: [:e | BPWebElement driver: self elementID: (e at: BPWebElement privateWebElementIdentifier)]]