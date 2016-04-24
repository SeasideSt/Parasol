facade
current
	^ Current ifNil: [ self error: 'No current BPPlatform is set, send #initialize to the appropriate subclass first.' ]