facade
httpDelete: url

	^self handleRequest: [ WebClient httpDelete: url asString ]