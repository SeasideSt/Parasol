*Parasol-Seaside
ensureSeasideServerStarted
	((Smalltalk at: #WAAdmin) defaultServerManager adaptors
		anySatisfy: #isRunning)
		ifTrue: [ nil ]
		ifFalse: [ (Smalltalk at: #ZnZincServerAdaptor) startOn: 8080 ]