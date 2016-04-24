utility methods
basicButton
	| button |
	button := SimpleButtonMorph new.
	button
		borderWidth: 1;
		borderColor: self paneColor;
		on: #mouseEnter send: #value to: [button borderWidth: 2];
		on: #mouseLeave send: #value to: [button borderWidth: 1];
		vResizing: #rigid;
		height: (TextStyle defaultFont height + 4);
		useSquareCorners;
		clipSubmorphs: true;
		color: self paneColor muchLighter;
		target: self.
	^button