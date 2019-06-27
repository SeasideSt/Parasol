running
testClickAction

	| bodyElement |
	
	bodyElement := driver findElementByTagName: 'body'.

	(Delay forMilliseconds: 100) wait.
	self assert: bodyElement getText equals: 'Did not click yet.'.
	(BPActions driver: driver)
		click;
		perform.
	self assert: bodyElement getText equals: 'Clicked!'.
