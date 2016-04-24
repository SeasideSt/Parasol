preference accessing
preferenceHelpText
	^self preferenceHelp asText
		addAttribute: TextEmphasis italic;
		yourself.