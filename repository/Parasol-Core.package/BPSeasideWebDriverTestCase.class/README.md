Description
--------------------

I am an abstract test class to help to test Seaside components. To add a test class just override #componentClass and you should be able to begin your tests.

Public API and Key Messages
--------------------

- #componentClass 		The class of the component to test with this test class.
- #configureTestApp: 		Allow to customize the app at his initialization

If you need to initialize your component with datas you have two hooks at your disposal.

- #intializeComponentUnderTest:  		The hook allow to customize the component to test for all tests
		
You can also add a pragma to a test to customize the state of the component to test. For example:

	testComponentWithSpecificCustomization
		<componentInitializer: #initializeComponentForSpecificTest:>
		self assert: (driver findElementByClassName: 'testStringToDisplay') getText equals: 'I am a specific test for only one test of the application.'
	
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	testComponent:		<aComponent> 		The component to test wrapped in a ValueHolder.
