facade
jsonRead: aString 
	^JSJsonParser parse: (aString copyWithout: Character null)