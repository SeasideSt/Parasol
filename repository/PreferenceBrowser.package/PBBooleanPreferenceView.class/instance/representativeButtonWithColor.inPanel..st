user interface
representativeButtonWithColor: aColor inPanel: aPreferencesPanel
	^self horizontalPanel
		layoutInset: 2;
		cellInset: 7;
		color: aColor;
		addMorphBack: (StringMorph contents: self preference name);
		addMorphBack: self horizontalFiller; 
		addMorphBack: self enabledButton;
		addMorphBack: self localToProjectButton;
		yourself.