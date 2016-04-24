submorphs - category list
newCategoryListPanel
	^Morph new
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		color: Color transparent;
		layoutPolicy: TableLayout new;
		cellInset: 3;
		listCentering: #topLeft;
		listDirection: #topToBottom;
		cellPositioning: #topLeft;
		clipSubmorphs: true;
		addMorphBack: self newCategoryListPanelLabel;
		addMorphBack: self newCategoryList