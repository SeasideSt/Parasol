facade
ensureSeasideServerRunning

	| default |

	default := WAWebServerAdaptor default.
	(default notNil and: [ default isRunning ]) ifFalse: [
		WAWebServerAdaptor startOn: 8080 ]