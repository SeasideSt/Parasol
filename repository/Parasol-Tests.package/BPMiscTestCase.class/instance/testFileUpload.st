testing
testFileUpload

	| fileupload filesubmit file receivedFile |
	
	file := BPSmalltalkPlatform current fileWrite: 'Test.data' contents: 'Hello World!'.

	[
		fileupload := driver findElementByXPath: ('//input[@type=''file'']').
		filesubmit := driver findElementByID: 'sendFile'.
		fileupload sendKeys: file.
		filesubmit click.
	
		receivedFile := self waitUntil: [ self componentUnderTest receivedFile ] is: [ :value | value notNil ]
			checkEvery: (Duration milliseconds: 100) timeoutAfter: (Duration seconds: 5) with: [ nil ].
		self assert: receivedFile notNil.
		self assert: (receivedFile contentsDecodedUsing: 'UTF-8') = 'Hello World!'.
	] ensure: [  BPSmalltalkPlatform current fileDelete: file ].