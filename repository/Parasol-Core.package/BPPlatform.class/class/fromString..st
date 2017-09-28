accessing
fromString: nameString

	^ PlatformsByName at: nameString ifAbsent: [
		self values do: [ :platform |
			platform getPartOfOsName do: [ :partOfOsName |
				(nameString asLowercase = partOfOsName asLowercase) ifTrue: [ ^ platform ] ] ].
		BPSmalltalkPlatform current signalException: ((Error new)
				messageText: 'No matching platform for ' , nameString;
				yourself) ]