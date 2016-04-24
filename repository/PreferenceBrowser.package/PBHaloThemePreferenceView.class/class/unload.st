class initialization
unload
	"Unload order is not guaranteed so guard against failure"
	[PreferenceViewRegistry ofHaloThemePreferences unregister: self] on: Error do:[]