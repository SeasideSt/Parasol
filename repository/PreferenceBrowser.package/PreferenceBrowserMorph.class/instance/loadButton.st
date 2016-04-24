submorphs - buttons
loadButton
	^loadButton ifNil: 
		[loadButton := self basicButton 
						label: 'load' translated; 
						actionSelector: #loadSelected;						
						setBalloonText: 
							'Click here to reset all the preferences to their values ',
							'in your Personal Preferences.' translated]