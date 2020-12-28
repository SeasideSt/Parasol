facade
deprecated: message

	(Deprecation canUnderstand: #context:) ifTrue: [
		Deprecation new
			context: thisContext sender;
			explanation: message;
			signal
	] ifFalse: [
		super deprecated: message ].
