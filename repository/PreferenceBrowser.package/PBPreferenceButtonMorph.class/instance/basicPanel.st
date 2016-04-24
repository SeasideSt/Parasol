utility methods
basicPanel
	^BorderedMorph new
		beTransparent;
		extent: 0@0;
		borderWidth: 0;
		layoutInset: 0;
		cellInset: 0;
		layoutPolicy: TableLayout new;
		listCentering: #topLeft;
		cellPositioning: #center;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		yourself