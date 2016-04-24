facade
httpGet: url

	^self handleRequest: [ WebClient httpGet: url asString ]