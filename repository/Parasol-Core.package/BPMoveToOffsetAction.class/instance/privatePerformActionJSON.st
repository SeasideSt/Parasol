private
privatePerformActionJSON

	| jsonObject |
	
	(jsonObject := Dictionary new)
		at: 'type' put: 'pointerMove';
		at: 'duration' put: (webElement ifNotNil: [ 100 ] ifNil: [ 200 ]);
		at: 'x' put: offset x;
		at: 'y' put: offset y;
		at: 'origin' put: (webElement ifNotNil: [ webElement asScriptArgumentJSON ] ifNil: [ 'pointer' ]).
	
	^ Array with: jsonObject
