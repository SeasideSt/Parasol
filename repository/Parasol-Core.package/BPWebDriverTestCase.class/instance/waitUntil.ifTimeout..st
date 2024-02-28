misc.
waitUntil: aCondition ifTimeout: timeoutBlock

	^ self waitUntil: aCondition ifTimeout: timeoutBlock times100MsToWait: 50