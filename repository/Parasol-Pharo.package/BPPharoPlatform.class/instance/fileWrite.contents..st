facade
fileWrite: filenameString contents: aStringOrByteArray

	| file block |
	file := ((FileLocator imageDirectory) / filenameString) asFileReference.
	block :=  [ :str | str nextPutAll: aStringOrByteArray ].
	file ensureDelete.
	aStringOrByteArray isString
		ifTrue:[ file writeStreamEncoded: 'ascii' do: block ]
		ifFalse:[ file binaryWriteStreamDo: block ].
	^file fullName