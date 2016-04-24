updating
adjustPreferenceListItemsWidth
	| panel |
	self preferenceList scroller submorphs 
		ifEmpty: [^self].
	panel := self preferenceListInnerPanel. 
	panel width: self preferenceList width - (self preferenceList scrollBarThickness*2).
	panel submorphsDo: [:ea | ea hResizing: #rigid; width: panel width].
	self preferenceList setScrollDeltas.