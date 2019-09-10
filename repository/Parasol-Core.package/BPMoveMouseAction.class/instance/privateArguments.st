private
privateArguments

	| arguments |
	
	arguments := Dictionary new.
	webElement ifNotNil: [
		arguments at: 'element' put: webElement elementID ].
	offset ifNotNil: [
		arguments
			at: 'xoffset' put: offset x;
			at: 'yoffset' put: offset y ].
	^ arguments
