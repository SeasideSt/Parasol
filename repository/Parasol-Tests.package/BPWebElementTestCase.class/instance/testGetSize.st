running
testGetSize

	| imageElement |
	imageElement := driver findElementByID: 'image'.
	self assert: (imageElement getSize) = (80@50).
