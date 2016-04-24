preference accessing
preferenceHelp
	| help name |
	help := self preference helpString withBlanksTrimmed.
	name := self preference name.
	(self caseInsensitiveBeginsWith: name  in: help)
		ifTrue: [help := help allButFirst: name size].
	(help notEmpty and: [help first = $:])
		ifTrue: [help := help allButFirst].
	^help withBlanksTrimmed.
