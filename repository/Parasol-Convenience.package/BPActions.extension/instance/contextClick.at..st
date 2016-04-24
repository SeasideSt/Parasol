*Parasol-Convenience
contextClick: webElement at: aPoint
	
	self moveToElement: webElement offset: aPoint.
	action addAction: (BPClickAction driver: driver buttonNumber: 2).