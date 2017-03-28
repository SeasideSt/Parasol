facade
ensureSeasideServerRunning
	|gemserver|
	(GemServer gemServerNamed: 'Seaside') ifNil:[
		(ZnSeasideGemServer register: 'Seaside' on: { self port }) startGems ].