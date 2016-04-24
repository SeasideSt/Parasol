*Parasol-Convenience
openAndSwitchToNewWindow

	| handle |
	handle := self openNewWindow.
	self switchTo window: handle.
	^ handle