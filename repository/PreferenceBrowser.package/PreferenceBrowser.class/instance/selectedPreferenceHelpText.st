accessing
selectedPreferenceHelpText
	self selectedPreference
		ifNil: [^''].
	^self selectedPreference helpString withBlanksTrimmed.