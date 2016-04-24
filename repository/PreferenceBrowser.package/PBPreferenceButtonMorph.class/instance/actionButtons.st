extra controls
actionButtons
	^self preferenceView actions collect: [:aTuple |
		self basicButton
				label: aTuple first;
				target: aTuple second;
				actionSelector: aTuple third;
				arguments: aTuple fourth;
				setBalloonText: aTuple fifth ]