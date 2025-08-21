facade
current
	^ Current ifNil: [ self error: 'No current BPSmalltalkPlatform is set, send #initialize to the appropriate subclass first.' ]