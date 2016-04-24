extra controls
moreButton
	^moreButton ifNil: 
		[moreButton := self basicButton 
						label: 'more' translated; 
						setBalloonText: 
							'Click here for advanced options'translated;
						actionSelector: #advancedOptionsSelected]