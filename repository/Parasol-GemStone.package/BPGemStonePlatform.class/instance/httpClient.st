facade
httpClient

	^ ZnClient new beOneShot; followRedirects: false; yourself.
