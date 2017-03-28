facade
stopSeasideTestApp: registrationName
	"System commitTransaction ifFalse:[self error: 'Parasol error: cannot continue transaction'].
	System abortTransaction."
	System continueTransaction ifFalse:[self error: 'Parasol error: cannot continue transaction'].
	super stopSeasideTestApp: registrationName.
	System commitTransaction ifFalse:[self error: 'Parasol error: cannot continue transaction'].