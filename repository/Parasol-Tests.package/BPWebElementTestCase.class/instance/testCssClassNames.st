running
testCssClassNames

	| testElement |
	testElement := driver findElementByID: 'testDiv2p1'.
	self assert: (testElement cssClassNames) asArray = #('c2')