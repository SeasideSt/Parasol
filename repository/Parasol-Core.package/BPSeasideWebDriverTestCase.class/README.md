Description
--------------------

I am an abstract test class to help to test Seaside components. To add a test class just override #componentClass and you should be able to begin your tests.

Public API and Key Messages
--------------------

- #componentClass 		The class of the component to test with this test class.
- #configureTestApp: 		Allow to customize the app at his initialization

If you need to initialize your component with datas you have two hooks at your disposal.

- #intializeComponentUnderTest:  		The hook allow to customize the component to test for all tests
- #initializationMap 					Allow to customize the component for some tests only. To get more detail check the comment inside this method.  
	
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	testComponent:		<aComponent> 		The component to test wrapped in a ValueHolder.
