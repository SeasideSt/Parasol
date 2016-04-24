testing
testFileUpload

	| fileupload filesubmit file |
	
	file := BPSmalltalkPlatform current fileWrite: 'Test.data' contents: 'Hello World!'.

	[
		fileupload := driver findElementByXPath: ('//input[@type=''file'']').
		filesubmit := driver findElementByID: 'sendFile'.
		fileupload sendKeys: file.
		filesubmit click.
	
		self assert: (self componentUnderTest receivedFile contentsDecodedUsing: 'UTF-8') = 'Hello World!'.
	] ensure: [  BPSmalltalkPlatform current fileDelete: file].