running
testExecuteWith

	| inputField |
	self assert: (driver executeScript: '' with: #()) isNil.
	self assert: (driver executeScript: 'return 42' with: #()) = 42.
	self assert: (driver executeScript: 'return arguments[arguments[0]]' with: #(0)) = 0.
	self assert: (driver executeScript: 'return arguments[arguments[0]]' with: #(1 42)) = 42.
	
	inputField := driver findElementByID: 'inputField'.
	self assert: (driver executeScript: 'return arguments[0].getAttribute(''type'')' with: (Array with: inputField)) = 'text'.
