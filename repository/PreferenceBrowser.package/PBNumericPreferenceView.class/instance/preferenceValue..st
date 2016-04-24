user interface
preferenceValue: aTextOrString
	(aTextOrString notEmpty and: [aTextOrString asString isAllDigits])
		ifFalse: [^false].
	self preference preferenceValue: aTextOrString asNumber.
	^true.