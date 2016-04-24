testing
testPlatformIs

	self assert: ((BPPlatform valueOf: 'ANDROID') is: (BPPlatform valueOf: 'ANDROID')).
	self assert: ((BPPlatform valueOf: 'ANDROID') is: (BPPlatform valueOf: 'LINUX')).
	self assert: ((BPPlatform valueOf: 'ANDROID') is: (BPPlatform valueOf: 'UNIX')).
	self assert: ((BPPlatform valueOf: 'ANDROID') is: (BPPlatform valueOf: 'ANY')).
	self deny: ((BPPlatform valueOf: 'ANDROID') is: (BPPlatform valueOf: 'WINDOWS')).

	self assert: ((BPPlatform valueOf: 'WIN8_1') is: (BPPlatform valueOf: 'WINDOWS')).
	self deny: ((BPPlatform valueOf: 'WIN8_1') is: (BPPlatform valueOf: 'MAC')).
