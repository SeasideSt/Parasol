running
testFindElementByClassName

	| testDiv1 testDiv2 testDiv1p testDiv2p1 testDiv2p2 testDiv2p3 |
	testDiv1 := driver findElementByID: 'testDiv1'.
	testDiv2 := driver findElementByID: 'testDiv2'.

	testDiv1p := driver findElementByID: 'testDiv1p'.
	testDiv2p1 := driver findElementByID: 'testDiv2p1'.
	testDiv2p2 := driver findElementByID: 'testDiv2p2'.
	testDiv2p3 := driver findElementByID: 'testDiv2p3'.
	
	self assert: (testDiv1p getAttribute: 'class') = 'c1'.
	self assert: (testDiv2p1 getAttribute: 'class') = 'c2'.
	self assert: (testDiv2p2 getAttribute: 'class') = 'c1'.
	self assert: (testDiv2p3 getAttribute: 'class') = 'c1'.
	
	self assert: ((testDiv1 findElementByClassName: 'c1') getAttribute: 'id') = 'testDiv1p'.
	self assert: ((testDiv2 findElementByClassName: 'c1') getAttribute: 'id') = 'testDiv2p2'.
	self assert: ((testDiv2 findElementByClassName: 'c2') getAttribute: 'id') = 'testDiv2p1'.
	
	self should: [ testDiv1 findElementByClassName: 'unusedClassName' ] raise: BPNoSuchElementException.