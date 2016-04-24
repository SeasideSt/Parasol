instance creation
new

	| newInstance |
	newInstance := realClass new.
	instantiationNotificationBlock value: newInstance.
	^ newInstance