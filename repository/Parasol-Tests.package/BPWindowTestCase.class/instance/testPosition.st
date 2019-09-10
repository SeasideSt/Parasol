running
testPosition
	
	driver manage window setPosition: 25@30.
	self assert: driver manage window getPosition = (25@30).
	driver manage window setPosition: 40@50.
	self assert: driver manage window getPosition = (40@50).
