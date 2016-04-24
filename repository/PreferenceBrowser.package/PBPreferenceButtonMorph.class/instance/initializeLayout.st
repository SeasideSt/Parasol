initialization
initializeLayout
	self layoutPolicy: TableLayout new;
		beTransparent;
		layoutInset: 0;
		cellInset: 0;
		listCentering: #topLeft;
		cellPositioning: #topLeft;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.		