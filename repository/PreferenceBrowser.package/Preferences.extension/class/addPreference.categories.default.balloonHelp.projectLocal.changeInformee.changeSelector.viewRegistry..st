*PreferenceBrowser
addPreference: aName categories: categoryList default: aValue balloonHelp: helpString projectLocal: localBoolean changeInformee: informeeSymbol changeSelector: aChangeSelector viewRegistry: aViewRegistry
	"For compatibility with the old set of protocols"
	^self addPreference: aName categories: categoryList default: aValue balloonHelp: helpString projectLocal: localBoolean changeInformee: informeeSymbol changeSelector: aChangeSelector type: (PreferenceViewRegistry typeOfRegistry: aViewRegistry).