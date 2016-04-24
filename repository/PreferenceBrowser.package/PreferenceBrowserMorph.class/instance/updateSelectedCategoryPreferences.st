updating
updateSelectedCategoryPreferences
	Cursor wait showWhile: 
		[self preferenceList 
				hScrollBarValue: 0;
				vScrollBarValue: 0.
		self preferenceList scroller removeAllMorphs.
		self preferenceList scroller addMorphBack: self newPreferenceListInnerPanel.
		self adjustPreferenceListItemsWidth]