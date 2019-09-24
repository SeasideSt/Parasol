private
privatePerformActionJSON

	^ Array with: (Dictionary new
		at: 'type' put: 'pointerUp';
		at: 'button' put: 0;
		yourself)