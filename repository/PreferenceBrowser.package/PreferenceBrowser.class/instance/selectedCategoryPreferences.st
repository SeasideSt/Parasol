accessing
selectedCategoryPreferences
	self allCategorySelected
		ifTrue: [^self allPreferences].
	self searchResultsCategorySelected 
		ifTrue: [^self searchResults].
	^self preferencesInCategory: self selectedCategory.
	