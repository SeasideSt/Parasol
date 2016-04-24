class initialization
unload
	"Unload order is not guaranteed so guard against failure"
	[PreferenceViewRegistry ofNumericPreferences unregister: self] on: Error do:[].