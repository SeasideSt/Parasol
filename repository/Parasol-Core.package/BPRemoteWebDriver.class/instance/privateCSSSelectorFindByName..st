private
privateCSSSelectorFindByName: nameString

	^ '*[name=''' , (self privateCSSUnicodeEscapeSequenceString: nameString) , ''''
