running
testGetAttribute

	| inputField testDiv2 |
	inputField := driver findElementByID: 'inputField'.
	self assert: (inputField getAttribute: 'type') equals: 'text'.
	self assert: (inputField getAttribute: 'id') equals: 'inputField'.
	self assert: (inputField getAttribute: 'attributeThatIsNotSpecified') isNil.
	self assert: (inputField getAttribute: 'value') isNil.
	testDiv2 := driver findElementByID: 'testDiv2'.
	self assert: (testDiv2 getAttribute: 'innerHTML') isNil.
