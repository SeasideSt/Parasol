running
testGetAttribute

	| inputField testDiv2 |
	inputField := driver findElementByID: 'inputField'.
	self assert: (inputField getAttribute: 'type') = 'text'.
	self assert: (inputField getAttribute: 'id') = 'inputField'.
	self assert: (inputField getAttribute: 'attributeThatIsNotSpecified') isNil.
	self assert: (inputField getAttribute: 'value') equals: ''.
	testDiv2 := driver findElementByID: 'testDiv2'.
	self assert: (testDiv2 getAttribute: 'innerHTML') equals: '<p id="testDiv2p1" class="c2"></p><p id="testDiv2p2" class="c1"></p><p id="testDiv2p3" class="c1"></p>'
