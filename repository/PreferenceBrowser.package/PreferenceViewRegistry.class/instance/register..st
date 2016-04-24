view registry
register: aProviderClass
	(self registeredClasses includes: aProviderClass) 
		ifFalse: [self registeredClasses add: aProviderClass].