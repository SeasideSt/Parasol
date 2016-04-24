event handling
basicKeyPressed: anEvent
	| aChar oldSelection nextSelection max milliSeconds nextSelectionList nextSelectionPref |
	aChar := anEvent keyCharacter.
	nextSelection := oldSelection := self selectedPreferenceIndex.
	max := self selectedCategoryPreferences size.
	milliSeconds := Time millisecondClockValue.
	milliSeconds - lastKeystrokeTime > 300 ifTrue: ["just use the one current character for selecting"
		lastKeystrokes := ''].
	lastKeystrokes := lastKeystrokes , aChar asLowercase asString.
	lastKeystrokeTime := milliSeconds.
	nextSelectionList := OrderedCollection newFrom: (self selectedCategoryPreferences copyFrom: oldSelection + 1 to: max).
	nextSelectionList addAll: (self selectedCategoryPreferences copyFrom: 1 to: oldSelection).
	"Get rid of blanks and style used in some lists"
	nextSelectionPref := nextSelectionList detect: [:a | a name withBlanksTrimmed asLowercase beginsWith: lastKeystrokes]
				ifNone: [^ self preferenceList flash"match not found"].
	nextSelection := self selectedCategoryPreferences findFirst: [:a | a  = nextSelectionPref].
	"No change if model is locked"
	oldSelection == nextSelection ifTrue: [^ self preferenceList flash].
	^ self selectedPreferenceIndex: nextSelection