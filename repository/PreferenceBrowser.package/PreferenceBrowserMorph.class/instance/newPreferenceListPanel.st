submorphs - preference list
newPreferenceListPanel
	| panel |
	panel := Morph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: Color transparent;
		layoutPolicy: TableLayout new;
		cellInset: 3;
		listCentering: #topLeft;
		listDirection: #topToBottom;
		cellPositioning: #topLeft;
		clipSubmorphs: true;
		addMorphBack: self newPreferenceListPanelLabel;
		addMorphBack: self preferenceList.
	^panel.