running
testRefresh

	self assert: driver getCurrentURL = self baseURL.
	driver refresh.
	self assert: driver getCurrentURL = self baseURL.