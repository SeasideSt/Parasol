accessing
selectedCategoryIndex: anIndex
	anIndex = 0
		ifTrue: [^self].
	self selectedPreference: nil.
	selectedCategoryIndex := anIndex.
	self changed: #selectedCategoryIndex.