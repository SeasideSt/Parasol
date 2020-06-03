facade
ensureSeasideServerStarted
	| default |

	default := WAWebServerAdaptor default.
	^ (default notNil and: [ default isRunning ]) 
		ifTrue:[ nil ] 
		ifFalse: [ WAWebServerAdaptor startOn: 8080 ]