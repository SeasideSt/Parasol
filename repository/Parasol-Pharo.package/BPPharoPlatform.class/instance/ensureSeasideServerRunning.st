facade
ensureSeasideServerRunning

	((Smalltalk at: #WAAdmin) defaultServerManager adaptors anySatisfy: #isRunning) ifFalse: [
		(Smalltalk at: #ZnZincServerAdaptor) startOn: 8080 ].
