*Parasol-Convenience
drag: sourceWebElement andDrop: targetWebElement at: aPoint

	self
		clickAndHold: sourceWebElement;
		moveToElement: targetWebElement offset: aPoint;
		releaseButton