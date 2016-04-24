user interface
offerPreferenceNameMenu: aPreferenceBrowser
	"the user clicked on a preference name -- put up a menu"

	| aMenu |			
	aMenu := MenuMorph new 
		defaultTarget: self preference;
		addTitle: self preference name.

	(Preferences okayToChangeProjectLocalnessOf: self preference name) ifTrue:
		[aMenu addUpdating: #isProjectLocalString target: self preference action: #toggleProjectLocalness.
		aMenu balloonTextForLastItem: 'Some preferences are best applied uniformly to all projects, and others are best set by each individual project.  If this item is checked, then this preference will be printed in bold and will have a separate value for each project'].

	aMenu add: 'browse senders' translated target: self systemNavigation selector: #browseAllSelect:name:autoSelect: argumentList: {[:m | self preference selectors anySatisfy: [:sel | m hasLiteralThorough: sel]]. 'Preference senders: {1}' translated format: {self preference name}. self preference selectors first}.
	aMenu balloonTextForLastItem: 'This will open a method-list browser on all methods that the send the preference "', self preference name, '".'. 
	aMenu add: 'show category...' target: aPreferenceBrowser selector: #findCategoryFromPreference: argument: self preference name.
	aMenu balloonTextForLastItem: 'Allows you to find out which category, or categories, this preference belongs to.'.

	Smalltalk isMorphic ifTrue:
		[aMenu add: 'hand me a button for this preference' target: self selector: #tearOffButton.
		aMenu balloonTextForLastItem: 'Will give you a button that governs this preference, which you may deposit wherever you wish'].

	aMenu add: 'copy this name to clipboard' target: self preference selector: #copyName.
	aMenu balloonTextForLastItem: 'Copy the name of the preference to the text clipboard, so that you can paste into code somewhere'.

	aMenu popUpInWorld