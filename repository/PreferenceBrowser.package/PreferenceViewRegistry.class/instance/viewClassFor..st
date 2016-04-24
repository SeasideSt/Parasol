view registry
viewClassFor: aPreferencePanel
	^self registeredClasses 
		detect: [:aViewClass| aViewClass handlesPanel: aPreferencePanel]
		ifNone: [].