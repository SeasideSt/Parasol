submorphs - search panel
newSearchPanel
	| bottom |
	bottom := Morph new
		color: Color transparent;
		cellInset: 5;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #topLeft;
		cellPositioning: #topLeft;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		addMorphBack: self newSearchTextField
		yourself.
	^Morph new
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		listCentering: #topLeft;
		cellPositioning: #topLeft;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 3;
		addMorphBack: (StringMorph contents: 'Search preferences for: ');
		addMorphBack: bottom;
		yourself.