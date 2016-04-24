facade
httpClient

	"For compatibility with an older version of Zinc:"
	Smalltalk at: #ZnNeoClient ifPresent: [ :class | ^ class new beOneShot; yourself ].
	^ ZnClient new beOneShot; followRedirects: false; yourself.