accessing
categoryList
	^OrderedCollection new
		add:  self allCategoryLabel;
		addAll: preferences categoryNames asSortedCollection;
		add: self searchResultsCategoryLabel;
		yourself.
	
	