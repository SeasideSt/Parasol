preference accessing
preferenceMorphicView
	^preferenceMorphicView
		ifNil: 
			[preferenceMorphicView := self preferenceView
				representativeButtonWithColor: Color transparent inPanel: self model.
			preferenceMorphicView hResizing: #spaceFill.
			^preferenceMorphicView]