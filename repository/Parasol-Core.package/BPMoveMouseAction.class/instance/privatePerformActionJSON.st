private
privatePerformActionJSON

	| jsonObject |
	
	(jsonObject := Dictionary new)
		at: 'type' put: 'pointerMove';
		at: 'duration' put: 100;
		at: 'origin' put: webElement asScriptArgumentJSON;
		at: 'x' put: 0;
		at: 'y' put: 0.
	
	^ Array with: jsonObject
