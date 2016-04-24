accessing
typeOfRegistry: aRegistry
	"Answer the type name for a particular view registry"
	^aRegistry caseOf:{
		[self ofBooleanPreferences]	-> [#Boolean].
		[self ofColorPreferences]		-> [#Color].
		[self ofFontPreferences]		-> [#Font].
		[self ofNumericPreferences]	-> [#Number].
		[self ofTextPreferences]		-> [#String].
		[self ofHaloThemePreferences]	-> [#Halo].
		[self registryOf: #windowColorPreferences]	-> [#WindowColor].
	} otherwise:[self registries keyAtIdentityValue: aRegistry ifAbsent:[nil]].