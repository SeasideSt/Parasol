private-response-handling
oldExceptions

	^ oldExceptions ifNil: [
		(oldExceptions := Dictionary new)
			at: 6 put: BPNoSuchSessionException;
			at: 7 put: BPNoSuchElementException;
			at: 10 put: BPStaleElementReferenceException;
			at: 11 put: BPElementNotVisibleException;
			at: 12 put: BPInvalidElementStateException;
			at: 13 put: BPUnknownServerException;
			at: 27 put: BPNoSuchAlertException;
			at: 32 put: BPInvalidSelectorException;
			at: 62 put: BPNoSuchCookieException;
			yourself ]