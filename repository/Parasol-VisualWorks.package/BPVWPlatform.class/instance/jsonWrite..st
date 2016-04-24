facade
jsonWrite: anObject

	| stream |
	stream := WriteStream on: String new.
	anObject jsonWriteOn: stream.
	^stream contents