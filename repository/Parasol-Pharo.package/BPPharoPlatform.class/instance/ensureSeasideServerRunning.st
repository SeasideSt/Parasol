facade
ensureSeasideServerRunning

	(WAAdmin defaultServerManager adaptors anySatisfy: #isRunning) ifFalse: [
		ZnZincServerAdaptor startOn: 8080 ].
