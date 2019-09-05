json
asScriptArgumentJSON

	^ Dictionary new
		at: BPWebElement privateWebElementIdentifier put: elementID;
		yourself