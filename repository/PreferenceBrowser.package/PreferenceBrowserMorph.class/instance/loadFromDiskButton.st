submorphs - buttons
loadFromDiskButton
	^loadFromDiskButton ifNil: 
		[loadFromDiskButton := self basicButton 
						label: 'load from disk' translated; 
						actionSelector: #loadFromDiskSelected;						
						setBalloonText: 
							'Click here to load all the preferences from ',
							'their saved values on disk.' translated]