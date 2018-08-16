*parasol-seaside
register: aComponentClass asParasolTestApplicationAt: aString
	"Use this to programmatically register a component as an application."
	| application |
	application := self register: WAApplication at: aString in: self defaultDispatcher.
	self configureNewApplication: application.
	application preferenceAt: #rootClass put: aComponentClass.
	^ application