facade
ensureSeasideServerRunning
	WAAdmin defaultServerManager adaptors ifEmpty:[
		ZnZincServerAdaptor startOn: 8080 ]