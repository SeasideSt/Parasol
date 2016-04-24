user interface
basicPanel
	^BorderedMorph new
		beTransparent;
		extent: 0@0;
		borderWidth: 0;
		layoutInset: 0;
		cellInset: 2;
		layoutPolicy: TableLayout new;
		listCentering: #topLeft;
		cellPositioning: #center;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself