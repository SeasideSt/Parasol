running
testFindElementsByTagName

	| testElements |
	testElements := driver findElementsByTagName: 'form'.
	self assert: (testElements collect: [:each | each getAttribute: 'method']) = #('get' 'post')