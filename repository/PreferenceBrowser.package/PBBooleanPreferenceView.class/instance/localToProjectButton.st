user interface
localToProjectButton
	| aButton aLabel |
	aButton := UpdatingThreePhaseButtonMorph checkBox
		target: self preference;
		actionSelector: #toggleProjectLocalness;
		getSelector: #localToProject;
		yourself.
	aLabel := (StringMorph contents: 'local' translated
				font: (StrikeFont familyName: TextStyle defaultFont familyName
							size: TextStyle defaultFont pointSize - 1)).		
	^self horizontalPanel
		addMorphBack: aButton;
		addMorphBack: aLabel;
		yourself.