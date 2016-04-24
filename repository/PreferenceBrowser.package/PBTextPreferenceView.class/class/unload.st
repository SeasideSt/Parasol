class initialization
unload
	"Unload order is not guaranteed so guard against failure"
	[PreferenceViewRegistry ofTextPreferences unregister: self] on: Error do:[]