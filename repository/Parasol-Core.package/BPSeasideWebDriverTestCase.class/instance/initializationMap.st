hook
initializationMap
	"I am a hook method allowing to personalize a component before a specific test. It should return a dictionary associating the name of the test method where the component should be personalized to a block with the customization. 
	
	Example: 
	
	Dictionary new
		at: #testPaginatedTableWithOnePage put: [ :component | component rows: (1 to: 5) ];
		at: #testPaginatedTableWithMultiplePages put: [ :component | component rows: (1 to: 500) ];
		yourself
	"

	^ Dictionary new