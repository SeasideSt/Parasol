comparing
= other

	^(other isKindOf: self class) and: 
			[driver
				httpGetHandleResponse: (self baseElementURL , 'equals/') , other elementID
				onSuccess: [:result | result at: 'value']]