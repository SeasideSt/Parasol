accessing
selectedCategory: aCategorySymbol
	self selectedCategoryIndex: (self categoryList indexOf: aCategorySymbol ifAbsent: [0]).