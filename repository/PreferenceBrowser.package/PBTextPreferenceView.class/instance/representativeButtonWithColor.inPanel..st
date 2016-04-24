user interface
representativeButtonWithColor: aColor inPanel: aPreferenceBrowser
	^self horizontalPanel
		layoutInset: 2;
		color: aColor;
		cellInset: 20;
		cellPositioning: #center;
		addMorphBack: (StringMorph contents: self preference name);
		addMorphBack: self textField;
		yourself.