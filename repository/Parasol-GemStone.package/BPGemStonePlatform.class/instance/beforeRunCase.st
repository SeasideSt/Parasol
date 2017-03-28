facade
beforeRunCase
	"To ensure a case begins with clean Tx"
	(System transactionConflicts at: #'commitResult') = #'failure' ifTrue:[ System abortTransaction ].