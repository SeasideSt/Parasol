running
testSwitchToActiveElement

	| inputFieldElement |
	
	self assert: (driver switchTo activeElement) = (driver findElementByTagName: 'body').

	inputFieldElement := driver findElementByID: 'inputField'.
	inputFieldElement click.
	self assert: (driver switchTo activeElement) = inputFieldElement.
