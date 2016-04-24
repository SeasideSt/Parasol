class initialization
unload
	"Unload order is not guaranteed so guard against failure"
	[PreferenceViewRegistry ofBooleanPreferences unregister: self] on: Error do:[].