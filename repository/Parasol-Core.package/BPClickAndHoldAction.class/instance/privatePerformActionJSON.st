private
privatePerformActionJSON

	^ Array with: (Dictionary new
		at: 'type' put: 'pointerDown';
		at: 'button' put: 0;
		yourself)
