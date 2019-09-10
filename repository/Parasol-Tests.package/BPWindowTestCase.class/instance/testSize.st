running
testSize

	driver manage window setSize: 500@600.
	self assert: driver manage window getSize = (500@600).
	driver manage window setSize: 600@500.
	self assert: driver manage window getSize = (600@500).
