private
baseURL

	self flag: 'This does not include the handle, does this mean we always need to make the window the current window first?'.
	^driver baseSessionURL , 'window/'