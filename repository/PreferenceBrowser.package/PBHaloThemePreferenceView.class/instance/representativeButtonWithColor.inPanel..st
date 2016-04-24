user interface
representativeButtonWithColor: aColor inPanel: aPreferencesPanel
	| innerPanel |
	innerPanel := self horizontalPanel
		addMorphBack: (self blankSpaceOf: 10@0);
		addMorphBack: self haloThemeRadioButtons;
		yourself.
	^self verticalPanel
		color: aColor;
		layoutInset: 2;
		addMorphBack: (StringMorph contents: self preference name);
		addMorphBack: innerPanel.