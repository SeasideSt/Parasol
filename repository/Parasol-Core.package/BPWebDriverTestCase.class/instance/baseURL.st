running
baseURL
	
	^ BaseURLOverride ifNil:[
		'http://localhost:', BPSmalltalkPlatform current port printString , '/' ]