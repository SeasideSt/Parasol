extra controls
addExtraControls
	| m |
	m := self horizontalPanel
		cellInset: 3;
		addAllMorphs: self actionButtons;
		addMorphBack: self horizontalFiller;
		addMorphBack: self moreButton;
		yourself.
	self 
		addMorphBack: (self blankSpaceOf: 2@2);
		addMorphBack: self preferenceHelpTextMorph;
		fullBounds; "to force a layout compute needed by the textMorphs's autoFit"
		addMorphBack: m
