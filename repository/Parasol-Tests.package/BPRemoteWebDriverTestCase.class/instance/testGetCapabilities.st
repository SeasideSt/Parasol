running
testGetCapabilities

	| capabilities platform |

	capabilities := driver getCapabilities.

	self assert: (capabilities getBrowserName includesSubstring: 'chrome'). "can be chrome or chrome-headless-shell"

	platform := capabilities getPlatform.
	self assert: (#('ANY' 'MAC' 'WINDOWS' 'UNIX' 'LINUX') includes: platform family name).
	self assert: (platform is: (BPPlatform valueOf: 'ANY')).
	self assert:
		(((platform is: (BPPlatform valueOf: 'MAC'))
			xor: (platform is: (BPPlatform valueOf: 'UNIX')))
			xor: (platform is: (BPPlatform valueOf: 'WINDOWS')))