facade
httpPost: url data: data timeout: seconds
	^self handleRequest: [ WebClient httpDo: [:client | 
		client 
			timeout: seconds;
			httpPost: url asString content: data type: 
				(WAMimeType applicationJson greaseString)] ]