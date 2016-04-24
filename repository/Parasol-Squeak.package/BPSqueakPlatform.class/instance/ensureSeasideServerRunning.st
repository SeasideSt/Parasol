facade
ensureSeasideServerRunning.
	WAWebServerAdaptor default isRunning ifFalse: [WAWebServerAdaptor startOn: 8080 ]