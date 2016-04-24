running
testFindElementByCSSSelector

	| exceptionThrown |
	self assert: (driver findElementByCSSSelector: '#testDiv2 :nth-child(3)') = (driver findElementByID: 'testDiv2p3').
	exceptionThrown := false.
	"There seems to be an inconsistency between different versions of Selenium and/or different browsers, so two different exceptions might be thrown:"
	[[ driver findElementByCSSSelector: '#testDiv2 :nth-ch' ]
		on: BPInvalidSelectorException
		do: [ :ex | exceptionThrown := true. ]]
		on: BPUnknownServerException
		do: [ :ex | exceptionThrown := true. ].
	self assert: exceptionThrown.
