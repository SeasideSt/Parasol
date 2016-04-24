*Parasol-Convenience
moveToElement: aPoint
	
	(BPActions driver: driver)
		moveToElement: self offset: aPoint;
		perform.