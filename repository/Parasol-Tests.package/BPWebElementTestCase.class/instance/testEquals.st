running
testEquals

	| testDiv1 testDiv1p testDiv1pByID testDiv1pByClassName testDiv2 |
	
	testDiv1 := driver findElementByID: 'testDiv1'.
	testDiv2 := driver findElementByID: 'testDiv2'.
	testDiv1pByID := driver findElementByID: 'testDiv1p'.
	testDiv1pByClassName := testDiv1 findElementByClassName: 'c1'.

	self flag: 'testDiv1pByID and testDiv1pByClassName do seem to have the same elementID; would be nice to expand this test with a case where the two elementIDs are not the same while still referring to the same element.'.
	self assert: testDiv1pByID = testDiv1pByClassName.
	self deny: testDiv1 = testDiv2.
	
	driver get: self baseURL asString.
	self flag: 'Should this not throw a stale element reference exception??'.
	self assert: testDiv1pByID = testDiv1pByClassName.