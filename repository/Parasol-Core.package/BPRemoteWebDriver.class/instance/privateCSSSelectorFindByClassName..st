private
privateCSSSelectorFindByClassName: nameString

	^ '.' , (self privateCSSUnicodeEscapeSequenceString: nameString)
