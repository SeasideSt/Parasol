facade
fileWrite: filenameString contents: aStringOrByteArray

	| file |
	(file := StandardFileStream forceNewFileNamed: (FileLocator imageDirectory) pathString, '/', filenameString)
		nextPutAll: aStringOrByteArray;
		close.
	^file fullName