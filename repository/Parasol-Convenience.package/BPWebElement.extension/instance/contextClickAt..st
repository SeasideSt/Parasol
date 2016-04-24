*Parasol-Convenience
contextClickAt: aPoint
	
	(BPActions driver: driver)
		contextClick: self at: aPoint;
		perform.