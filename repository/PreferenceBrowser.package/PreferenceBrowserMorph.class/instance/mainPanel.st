submorphs - main panel
mainPanel
	^mainPanel ifNil: 
		[mainPanel := BorderedMorph new
			color: Color transparent;
			borderWidth: 0;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			cellInset: 5;
			changeProportionalLayout;
			on: #mouseEnter send: #paneTransition: to: self;
			addMorphBack: self newCategoryList;
			addMorphBack: self preferenceList;
			layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@ 30 corner: 0@0));
			addPaneSplitters;
			yourself].