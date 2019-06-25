running
testAlerts
	self should: [ driver dismissAlert ] raise: BPNoSuchAlertException.
	(driver findElementByPartialLinkText: 'Alert!') click.
	driver dismissAlert.
	self should: [ driver dismissAlert ] raise: BPNoSuchAlertException.