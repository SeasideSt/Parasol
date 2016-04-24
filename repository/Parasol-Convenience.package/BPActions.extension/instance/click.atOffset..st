*Parasol-Convenience
click: anElement atOffset: anOffset

	self moveToElement: anElement offset: anOffset.
	action addAction: (BPClickAction driver: driver buttonNumber: 1)