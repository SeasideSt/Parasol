*Parasol-Convenience
clickAt: aPoint
	
	(BPActions driver: driver)
		click: self atOffset: aPoint;
		perform.