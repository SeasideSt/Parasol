running
startTestApp

	self configureTestApp: (WAAdmin
				register: (BPClassInstantiationNotificationWrapper
						withRealClass: self componentClass
						instantiationNotificationBlock: [:newInstance | self componentUnderTest: newInstance])
				asParasolTestApplicationAt: self registrationName)