class initialization
initialize
	self ~~ BPSmalltalkPlatform ifTrue: [BPSmalltalkPlatform current: self new]