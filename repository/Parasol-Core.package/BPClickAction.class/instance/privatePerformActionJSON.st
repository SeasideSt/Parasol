private
privatePerformActionJSON

	^ Array
		with: (Dictionary new
			at: 'type' put: 'pointerDown';
			at: 'button' put: buttonNumber;
			yourself)
		with: (Dictionary new
			at: 'type' put: 'pointerUp';
			at: 'button' put: buttonNumber;
			yourself)
