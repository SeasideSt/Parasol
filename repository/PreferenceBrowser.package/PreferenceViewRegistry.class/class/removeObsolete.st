class initialization
removeObsolete
	"PreferenceViewRegistry removeObsolete"
	"Remove obsolete entries from the registries"
	self registries do:[:viewRegistry|
		viewRegistry registeredClasses copy do:[:rClass|
			rClass isObsolete ifTrue:[viewRegistry unregister: rClass]]].