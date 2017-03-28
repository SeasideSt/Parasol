running
testGetText

	| paragraphElement |
	paragraphElement := driver findElementByTagName: 'p'.
	self assert: paragraphElement getText = 'Supercalifragilisticexpialidocious'.