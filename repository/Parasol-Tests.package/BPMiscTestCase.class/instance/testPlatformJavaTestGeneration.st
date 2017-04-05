testing
testPlatformJavaTestGeneration

	| stream |

	stream := WriteStream on: String new.
	BPPlatform generateJavaTestOn: stream.
	stream close.
	self assert: (stream contents findString: '@Test' startingAt: 1) > 0
		description: 'The generated Java test code should at least contain the @Test annotation'.
