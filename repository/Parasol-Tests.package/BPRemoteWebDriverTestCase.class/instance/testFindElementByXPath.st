running
testFindElementByXPath

	self assert: (driver findElementByXPath: '//div[@id=''testDiv1'']') = (driver findElementByID: 'testDiv1').
	self assert: (driver findElementByXPath: '//div[@id=''testDiv2'']') = (driver findElementByID: 'testDiv2').
	self should: [ driver findElementByXPath: '//div[@id=' ] raise: BPInvalidSelectorException.