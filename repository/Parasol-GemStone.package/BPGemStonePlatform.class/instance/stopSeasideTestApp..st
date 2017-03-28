facade
stopSeasideTestApp: registrationName
	System commitTransaction ifFalse:[self error: 'Parasol error: cannot continue transaction'].
	System abortTransaction.
	"I would expect the above two lines can be replaced by the commented line below.
	However, that only works in GS2.4 and not in GS3.2
	System continueTransaction ifFalse:[self error: 'Parasol error: cannot continue transaction']."
	super stopSeasideTestApp: registrationName.
	System commitTransaction ifFalse:[self error: 'Parasol error: cannot continue transaction'].