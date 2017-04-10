running
customInitializationHookOn: aComponent
	"This hook will check if there is a special customisation to apply to the component to test for a specific test.
	To use this hook you need to add a pragma to the test with this form: <componentInitializer: #nameOfACustomMethodToCallOnTheComponent:>.
	
	You can check the test BPWebElementTestCase>>testComponentWithSpecificCustomization to get an example."

	(PragmaCollector new filter: [ :prg | prg keyword = #componentInitializer: and: [ prg method selector = self selector ] ]) reset do: [ :pragma | self perform: (pragma argumentAt: 1) with: aComponent ]