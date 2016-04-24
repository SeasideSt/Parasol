extra controls
preferenceHelpTextMorph
	| text tm |
	text := self preferenceHelpText.
	tm := TextMorph new
		contents: text;
		wrapOnOff;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		lock: true;
		visible: text notEmpty;
		yourself. "we don't want an empty textmorph showing"
	tm isAutoFit
		ifFalse: [tm autoFitOnOff].
	^tm.