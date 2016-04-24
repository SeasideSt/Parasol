user interface
enabledButton
	| aButton aLabel |
	aButton := UpdatingThreePhaseButtonMorph checkBox
		target: self preference;
		actionSelector: #togglePreferenceValue;
		getSelector: #preferenceValue;
		yourself.
	aLabel := (StringMorph contents: 'enabled' translated
				font: (StrikeFont familyName: TextStyle defaultFont familyName
							size: TextStyle defaultFont pointSize - 1)).
	^self horizontalPanel
		addMorphBack: aButton;
		addMorphBack: aLabel;
		yourself.