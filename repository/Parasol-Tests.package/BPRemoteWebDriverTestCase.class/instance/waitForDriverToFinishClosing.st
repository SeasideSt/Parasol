misc
waitForDriverToFinishClosing

	self flag: 'Check whether there is a better way to do this rather than just waiting for a set amount of time'.
	(Delay forSeconds: 1) wait.