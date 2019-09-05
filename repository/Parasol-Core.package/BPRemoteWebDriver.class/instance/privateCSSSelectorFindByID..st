private
privateCSSSelectorFindByID: idString

	^ '#' , (self privateCSSUnicodeEscapeSequenceString: idString)
