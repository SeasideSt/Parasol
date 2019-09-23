running
testGetKeyboardSendKeys

	| inputElement submitButton submittedValue |

	self assert: self componentUnderTest inputFieldValue isNil.
	inputElement := driver findElementByID: 'inputField'.
	inputElement click.
	driver getKeyboard sendKeys: 'foo' , (String with: BPKeys shift) , 'bar'.
	driver getKeyboard sendKeys: 'baz' , (String with: BPKeys shift) , 'qux' , (String with: BPKeys shift).
	driver getKeyboard sendKeys: 'quux' , (String with: BPKeys null) , 'quuz'.
	driver getKeyboard sendKeys: 'NA' , (String with: BPKeys shift) , 'RFzo', (String with: BPKeys shift) , 'rt'.
	submitButton := driver findElementByID: 'submitButton'.
	submitButton click.
	submittedValue := self waitUntil: [ self componentUnderTest inputFieldValue ] is: [ :value | value notNil ]
		checkEvery: (Duration milliseconds: 100) timeoutAfter: (Duration seconds: 5) with: [ nil ].
	self assert: submittedValue equals: 'fooBARBAZquxQUUXquuzNARFZOrt'.
