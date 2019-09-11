private
privateArguments

	| arguments |
	
	(arguments := Dictionary new)
		at: 'xoffset' put: offset x;
		at: 'yoffset' put: offset y.
	webElement ifNotNil: [
		arguments at: 'element' put: webElement elementID ].
	^ arguments
