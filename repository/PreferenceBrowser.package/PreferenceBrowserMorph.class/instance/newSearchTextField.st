submorphs - search panel
newSearchTextField
	| ptm |
	ptm := PluggableTextMorphPlus
		on: self model
		text: #searchPatternNeverTriggered
		accept: #searchPattern:.
	ptm
		balloonText: 'Search preferences ...';
		hideScrollBarsIndefinitely;
		layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@0) offsets: (0@0 corner: 0@ 30));
		borderInset;
		color: Color white;
		vResizing: #rigid;
		hResizing: #spaceFill;
		height: TextStyle defaultFont height * 2;
		acceptOnCR: true;
		onKeyStrokeSend: #value to: [ ptm hasUnacceptedEdits ifTrue: [ ptm accept ] ].
	^ptm.