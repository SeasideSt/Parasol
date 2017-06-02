facade
stopSeasideTestApp: registrationName
	System commitTransaction ifFalse:[self error: 'Parasol error: commitTransaction failed!'].
	super stopSeasideTestApp: registrationName.
	System commitTransaction ifFalse:[self error: 'Parasol error: commitTransaction failed!'].