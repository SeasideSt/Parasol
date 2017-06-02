running
customInitializationHookOn: component

	"This hook will check if there is a special customisation to apply to the component to test for a specific test.
	To use this hook you need to add a pragma to the test with this form: <componentInitializer: #nameOfACustomMethodToCallOnTheComponent:>.
	
	You can check the test BPWebElementTestCase>>testComponentWithSpecificCustomization to get an example."

	(self class lookupSelector: self selector) pragmas do: [ :pragma |
		(pragma keyword = #componentInitializer:) ifTrue: [
			self perform: pragma arguments first with: component ] ].
