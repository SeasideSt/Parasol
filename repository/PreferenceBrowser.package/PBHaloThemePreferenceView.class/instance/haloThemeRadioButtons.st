user interface
haloThemeRadioButtons
	"Answer a column of butons representing the choices of halo theme"

	| buttonColumn |
	buttonColumn := self verticalPanel.
	#(	(iconicHaloSpecifications iconic iconicHalosInForce	'circular halos with icons inside')
		(classicHaloSpecs	classic	classicHalosInForce		'plain circular halos')
		(simpleFullHaloSpecifications		simple	simpleHalosInForce	'fewer, larger halos')
		(customHaloSpecs	custom	customHalosInForce		'customizable halos')) do:

		[:quad |
			| aRow aRadioButton aLabel |
			aRadioButton := UpdatingThreePhaseButtonMorph radioButton
				target: Preferences;
				setBalloonText: quad fourth;
				actionSelector: #installHaloTheme:;
				getSelector: quad third;
				arguments: (Array with: quad first);
				yourself.
			aLabel := (StringMorph contents: quad second asString)
						setBalloonText: quad fourth;
						yourself.
			aRow := self horizontalPanel
				cellInset: 4;
				addMorphBack: aRadioButton;
				addMorphBack: aLabel.
			buttonColumn addMorphBack: aRow].
	^ buttonColumn

	"(Preferences preferenceAt: #haloTheme) view tearOffButton"