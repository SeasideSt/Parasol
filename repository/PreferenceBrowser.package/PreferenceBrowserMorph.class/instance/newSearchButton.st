submorphs - search panel
newSearchButton
	^self basicButton
			label: 'search' translated; 
			actionSelector: #searchSelected;
			setBalloonText: 
				'Type what you want to search for here, then hit ',
				'the "Search" button, or else hit RETURN or ENTER' translated.