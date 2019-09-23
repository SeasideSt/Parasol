actions
getText

	^ driver httpGetHandleResponse: driver baseSessionURL , 'alert/text'
		onSuccess: [ :result | result at: 'value' ]
