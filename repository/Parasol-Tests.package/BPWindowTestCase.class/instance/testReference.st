running
testReference

	"Tests that #window returns a reference to the window that is 'current' when
	the reference is used, rather than a reference to the window that was 'current'
	when the message was sent."

	| window1 windowHandle1 windowHandle2 window2 |
	
	window1 := driver manage window.
	window1 setPosition: 30@35.
	window1 setSize: 600@500.
	self waitUntil: [ window1 getPosition = (30@35) ] ifTimeout: [ self fail ].
	self assert: window1 getPosition = (30@35).
	self assert: window1 getSize = (600@500).
	
	windowHandle1 := driver getWindowHandle.
	driver executeScript: 'window.open("", "test", "left=40,top=45,width=650,height=550")' with: #().
	self assert: (self waitUntil: [ driver getWindowHandles size = 2 ]
		checkEvery: (Duration milliseconds: 100) timeoutAfter: (Duration seconds: 5)).
	windowHandle2 := (driver getWindowHandles copyWithout: windowHandle1) anyOne.

	driver switchTo window: windowHandle2.
	self assert: driver getWindowHandle equals: windowHandle2.
	window2 := driver manage window.
	self deny: window2 getPosition = (30@35).
	self deny: window2 getSize = (600@500).

	self deny: window1 getPosition = (30@35).
	self deny: window1 getSize = (600@500).
	driver switchTo window: windowHandle1.
	self assert: driver getWindowHandle equals: windowHandle1.
	self waitUntil: [ window1 getPosition = (30@35) ] ifTimeout: [ self fail ].
	self assert: window1 getPosition = (30@35).
	self assert: window1 getSize = (600@500).
	self assert: window2 getPosition = (30@35).
	self assert: window2 getSize = (600@500).
