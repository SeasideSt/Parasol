testing
testAlerts

	self should: [ driver switchTo alert getText ] raise: BPNoSuchAlertException.
	self should: [ driver switchTo alert dismiss ] raise: BPNoSuchAlertException.
	self should: [ driver switchTo alert accept ] raise: BPNoSuchAlertException.

	(driver findElementByLinkText: 'Confirm') click.
	self assert: driver switchTo alert getText = 'Confirm Test?'.
	driver switchTo alert accept.
	self assert: (driver findElementByID: 'result') getText = 'OK'.
	self should: [ driver switchTo alert getText ] raise: BPNoSuchAlertException.

	(driver findElementByLinkText: 'Confirm') click.
	self assert: driver switchTo alert getText = 'Confirm Test?'.
	driver switchTo alert dismiss.
	self assert: (driver findElementByID: 'result') getText = 'Cancel'.
	self should: [ driver switchTo alert getText ] raise: BPNoSuchAlertException.
