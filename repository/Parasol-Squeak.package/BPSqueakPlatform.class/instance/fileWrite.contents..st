facade
fileWrite: filenameString contents: aStringOrByteArray

	| file |
	(file := StandardFileStream forceNewFileNamed: filenameString)
		nextPutAll: aStringOrByteArray;
		close.
	^file fullName