private-response-handling
exceptions

	^ exceptions ifNil: [
		(exceptions := Dictionary new)
			at: 400 put: ((Dictionary new)
								at: 'element click intercepted' put: BPElementClickInterceptedException;
								at: 'element not interactable' put: BPElementNotInteractableException;
								at: 'insecure certificate' put: BPException;
								at: 'invalid argument' put: BPException;
								at: 'invalid cookie domain' put: BPException;
								at: 'invalid element state' put: BPInvalidElementStateException;
								at: 'invalid selector' put: BPInvalidSelectorException;
								yourself);
			at: 404 put: ((Dictionary new)
								at: 'invalid session id' put: BPNoSuchSessionException;
								at: 'no such alert' put: BPNoSuchAlertException;
								at: 'no such cookie' put: BPNoSuchCookieException;
								at: 'no such element' put: BPNoSuchElementException;
								at: 'no such frame' put: BPNoSuchFrameException;
								at: 'no such window' put: BPNoSuchWindowException;
								at: 'stale element reference' put: BPStaleElementReferenceException;
								at: 'unknown command' put: BPException;
								yourself);
			at: 405 put: ((Dictionary new)
								at: 'unknown method' put: BPUnknownMethodException;
								yourself);
			at: 408 put: ((Dictionary new)
								at: 'script timeout' put: BPScriptTimeoutException;
								at: 'timeout' put: BPTimeoutException;
								yourself);
			at: 500 put: ((Dictionary new)
								at: 'javascript error' put: BPJavascriptException;
								at: 'move target out of bounds' put: BPMoveTargetInvalidException;
								at: 'session not created' put: BPNoSuchSessionException;
								at: 'unable to set cookie' put: BPUnableToSetCookieException;
								at: 'unable to capture screen' put: BPException;
								at: 'unexpected alert open' put: BPUnexpectedAlertException;
								at: 'unknown error' put: BPUnknownServerException;
								at: 'unsupported operation' put: BPUnsupportedCommandException;
								yourself);
			yourself ]