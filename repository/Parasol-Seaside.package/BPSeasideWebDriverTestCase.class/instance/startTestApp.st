running
startTestApp

	self configureTestApp: (self
				register: (BPClassInstantiationNotificationWrapper
						withRealClass: self componentClass
						instantiationNotificationBlock: [:newInstance | self componentUnderTest: newInstance])
				asParasolTestApplicationAt: self registrationName)