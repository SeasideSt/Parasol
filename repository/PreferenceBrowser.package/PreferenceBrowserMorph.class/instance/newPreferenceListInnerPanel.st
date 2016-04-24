submorphs - preference list
newPreferenceListInnerPanel
	| panel maxWidth totalHeight |
	panel := (Morph new)
				color: Color transparent;
				layoutPolicy: TableLayout new;
				listDirection: #topToBottom;
				cellPositioning: #topLeft;
				yourself.
	self selectedCategoryPreferences 
		do: [:aPref | panel addMorphBack: (self newPreferenceButtonFor: aPref)].
	panel submorphs size = 0 ifTrue: [^panel].
	maxWidth := (panel submorphs detectMax: [:m | m width]) width.
	panel width: maxWidth.
	totalHeight := (panel submorphs collect: [:ea | ea height]) inject: 0
				into: [:h :tot | h + tot].
	panel height: totalHeight.
	panel fullBounds.
	^panel