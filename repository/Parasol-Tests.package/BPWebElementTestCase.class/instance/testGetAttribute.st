running
testGetAttribute

	| inputField |
	inputField := driver findElementByID: 'inputField'.
	self assert: (inputField getAttribute: 'type') = 'text'.
	self assert: (inputField getAttribute: 'id') = 'inputField'.
	self assert: (inputField getAttribute: 'attributeThatIsNotSpecified') isNil.