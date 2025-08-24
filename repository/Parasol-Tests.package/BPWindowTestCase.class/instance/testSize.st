running
testSize

	driver manage window setSize: 500@600.
	self waitUntil: [ driver manage window getSize = (500@600) ] ifTimeout: [ self fail ].
	self assert: driver manage window getSize = (500@600).
	driver manage window setSize: 600@500.
	self waitUntil: [ driver manage window getSize = (600@500) ] ifTimeout: [ self fail ].
	self assert: driver manage window getSize = (600@500).
