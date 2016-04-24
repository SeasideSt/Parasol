window color
windowColorSpecification
	"Answer a WindowColorSpec object that declares my preference"

	^ WindowColorSpec classSymbol: self name wording: 'Preference Browser' brightColor: #(0.645 1.0 1.0)	pastelColor: #(0.886 1.0 1.0) helpMessage: 'A tool for expressing personal preferences for numerous options.'