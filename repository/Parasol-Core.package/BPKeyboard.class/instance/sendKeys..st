misc
sendKeys: keysString
	"
		https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/Keyboard.html#sendKeys(java.lang.CharSequence...)
	"

	| keyActions |

	keyActions := OrderedCollection new.
	keysString do: [ :keyCharacter |
		(keyCharacter = BPKeys null) ifFalse: [
			| keyString |
			keyString := String with: keyCharacter.
			keyActions add: (Dictionary new at: 'type' put: 'keyDown'; at: 'value' put: keyString; yourself).
			(self privateIsModifierKey: keyCharacter) ifFalse: [
				keyActions add: (Dictionary new at: 'type' put: 'keyUp'; at: 'value' put: keyString; yourself) ]
		] ifTrue: [
			keyActions add: (Dictionary new at: 'type' put: 'keyUp'; at: 'value' put: (String with: BPKeys shift); yourself).
			keyActions add: (Dictionary new at: 'type' put: 'keyUp'; at: 'value' put: (String with: BPKeys control); yourself).
			keyActions add: (Dictionary new at: 'type' put: 'keyUp'; at: 'value' put: (String with: BPKeys alt); yourself).
			keyActions add: (Dictionary new at: 'type' put: 'keyUp'; at: 'value' put: (String with: BPKeys command); yourself) ] ].

	driver httpPostHandleResponse: (driver baseSessionURL , 'actions')
		jsonData: (Dictionary new
			at: 'actions' put: (Array with: (Dictionary new
				at: 'type' put: 'key';
				at: 'id' put: 'default keyboard';
				at: 'actions' put: (Array withAll: keyActions);
				yourself));
			yourself).
