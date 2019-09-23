actions
getText

	^ driver httpGetHandleResponse: driver baseSessionURL , 'alert_text'
		onSuccess: [ :result | result at: 'value' ]
