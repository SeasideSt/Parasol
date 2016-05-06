running
configureTestApp: testApp

	testApp configuration 
		takeValue: #()
		forAttribute: (testApp configuration attributeAt: #rootDecorationClasses).