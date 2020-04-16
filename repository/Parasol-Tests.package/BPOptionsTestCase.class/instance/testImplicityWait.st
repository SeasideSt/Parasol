running
testImplicityWait
	
	(driver findElementByPartialLinkText: 'After 2 Seconds') click.
	self should: [ driver findElementByPartialLinkText: 'After 2 Seconds FOO' ] raise: BPNoSuchElementException.

	driver manage timeouts implicitlyWait: (Duration seconds: 3).

	(driver findElementByPartialLinkText: 'After 2 Seconds FOO') click.
	self shouldnt: [ driver findElementByPartialLinkText: 'After 2 Seconds FOO FOO' ] raise: BPNoSuchElementException.
