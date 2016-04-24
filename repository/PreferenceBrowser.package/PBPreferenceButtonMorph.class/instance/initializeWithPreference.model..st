initialization
initializeWithPreference: aPreference model: aModel
	preference := aPreference.
	model := aModel.
	self initializeLayout.
	self addMorphBack: self preferenceMorphicView.
	self highlightOff.