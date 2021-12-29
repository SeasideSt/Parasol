running
register: aComponentClass asParasolTestApplicationAt: aString
	"Use this to programmatically register a component as an application."
	| application |
	application := WAAdmin register: WAApplication at: aString in: WAAdmin defaultDispatcher.
	WAAdmin configureNewApplication: application.
	application preferenceAt: #rootClass put: aComponentClass.
	^ application