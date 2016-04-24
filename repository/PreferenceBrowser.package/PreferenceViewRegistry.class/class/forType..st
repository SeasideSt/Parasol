accessing
forType: typeName
	"Answer the preference registry for the given type name"
	^typeName caseOf:{
		[#Boolean]	->	[self ofBooleanPreferences].
		[#Color]	->	[self ofColorPreferences].
		[#Font]		->	[self ofFontPreferences].
		[#Number]	->	[self ofNumericPreferences].
		[#String]	->	[self ofTextPreferences].
		[#Halo]		->	[self ofHaloThemePreferences].
		[#WindowColor]	-> [self registryOf: #windowColorPreferences]
	} otherwise:[self registryOf: typeName].