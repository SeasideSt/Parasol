private
privateConvertScriptReturnValue: jsonValue

	jsonValue ifNil: [ ^ nil ].
	((jsonValue == true) | (jsonValue == false)) ifTrue: [ ^ jsonValue ].
	jsonValue isNumber ifTrue: [ ^ jsonValue ].
	jsonValue isString ifTrue: [ ^ jsonValue ].
	jsonValue isArray ifTrue: [
		^ jsonValue collect: [ :element | self privateConvertScriptReturnValue: element ] ].
	jsonValue isDictionary ifTrue: [
		((jsonValue size = 1) and: [ jsonValue includesKey: BPWebElement privateWebElementIdentifier ]) ifTrue: [
			^ BPWebElement driver: self elementID: (jsonValue at: BPWebElement privateWebElementIdentifier)
		] ifFalse: [
			^ jsonValue collect: [ :element | self privateConvertScriptReturnValue: element ] ] ].
	Error signal: 'Unexpected argument in #privateConvertScriptReturnValue: - ' , jsonValue asString.
