running
testExecuteWith

	| inputField |

	self assert: (driver executeScript: '' with: #()) isNil.
	self assert: (driver executeScript: 'return null' with: #()) isNil.
	self assert: (driver executeScript: 'return undefined' with: #()) isNil.
	self assert: (driver executeScript: 'return true' with: #()) = true.
	self assert: (driver executeScript: 'return false' with: #()) = false.
	self assert: (driver executeScript: 'return 42' with: #()) = 42.
	self assert: (driver executeScript: 'return 0.3' with: #()) = 0.3.
	self assert: (driver executeScript: 'return "foo"' with: #()) = 'foo'.
	self assert: (driver executeScript: 'return "\u{1F600}"' with: #()) = (String with: (Character codePoint: 16r1F600)).
	self assert: (driver executeScript: 'return [42]' with: #()) = #(42).
	self assert: (driver executeScript: 'return { foo: "bar" }' with: #()) = (Dictionary with: 'foo' -> 'bar').

	self assert: (driver executeScript: 'return arguments[arguments[0]]' with: #(0)) = 0.
	self assert: (driver executeScript: 'return arguments[arguments[0]]' with: #(1 42)) = 42.
	self assert: (driver executeScript: 'return arguments[0]' with: #((1 2 3))) = #(1 2 3).
	self assert: (driver executeScript: 'return arguments[0]' with: (Array with: (Dictionary with: 'foo' -> 'bar'))) = (Dictionary with: 'foo' -> 'bar').
	
	inputField := driver findElementByID: 'inputField'.
	self assert: (driver executeScript: 'return arguments[0].getAttribute(''type'')' with: (Array with: inputField)) = 'text'.
	self assert: (driver executeScript: 'return arguments[0][0].foo.getAttribute(''type'')' with: (Array with: (Array with: (Dictionary with: 'foo' -> inputField)))) = 'text'.
	self assert: (driver executeScript: 'return arguments[0]' with: (Array with: inputField)) = inputField.
	self assert: (driver executeScript: 'return { foo: [arguments[0]] }' with: (Array with: inputField)) = (Dictionary with: 'foo' -> (Array with: inputField)).
