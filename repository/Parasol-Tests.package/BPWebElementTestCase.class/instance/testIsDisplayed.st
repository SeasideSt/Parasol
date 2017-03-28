running
testIsDisplayed

	| inputField secretField |
	inputField := driver findElementByID: 'inputField'.
	secretField := driver findElementByName: 'secretField'.
	self assert: inputField isDisplayed.
	self deny: secretField isDisplayed.