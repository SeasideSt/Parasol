running
testGetLocation

	| imageElement |
	imageElement := driver findElementByID: 'image'.
	self assert: (imageElement getLocation) =  (300@400).
