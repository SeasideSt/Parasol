facade
fileWrite: fileName contents: aStringOrByteArray

	GRPlatform current write: aStringOrByteArray toFile: fileName inFolder: FileDirectory default fullName.
	^ (FileDirectory default / fileName) fullName