submorphs - root panel
rootPanel
	^BorderedMorph new
		color: Color transparent;
		borderWidth: 0;
		changeProportionalLayout;
		addMorphBack: self newSearchTextField;
		addMorphBack: self mainPanel;
		yourself.