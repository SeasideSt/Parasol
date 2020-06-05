accessing
resources
	^ super resources,
			(self shouldEnsureSeasideServerRunning
				ifTrue: [ Array with: BPSeasideServerResource ]
				ifFalse: [ Array new ])