facade
fileWrite: fileName contents: aString

	| fileStream |
	fileStream := fileName asFilename writeStream.
	(aString isKindOf: ByteArray) ifTrue: [ fileStream binary ].
	fileStream
		nextPutAll: aString;
		close.
	^fileName asFilename asAbsoluteFilename asString