running
testGetProperty
	| inputField testDiv2 |
	inputField := driver findElementByID: 'inputField'.
	self assert: (inputField getProperty: 'type') equals: 'text'.
	self assert: (inputField getProperty: 'id') equals: 'inputField'.
	self assert: (inputField getProperty: 'propertyThatIsNotSpecified') isNil.
	self assert: (inputField getProperty: 'value') = ''.
	inputField sendKeys: 'some test'.
	self assert: (inputField getProperty: 'value') = 'some test'.
	testDiv2 := driver findElementByID: 'testDiv2'.
	self assert: (testDiv2 getProperty: 'innerHTML') equals: '<p id="testDiv2p1" class="c2"></p><p id="testDiv2p2" class="c1"></p><p id="testDiv2p3" class="c1"></p>'
