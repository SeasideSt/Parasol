submorphs - category list
newCategoryList 
	^(PluggableListMorph
		on: self model
		list: #categoryList
		selected: #selectedCategoryIndex
		changeSelected: #selectedCategoryIndex:)
			color: Color white;
			borderInset;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			layoutFrame: (LayoutFrame fractions: (0@0 corner: 0.25@1));
			yourself.