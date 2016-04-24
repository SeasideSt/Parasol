facade
port
	| adaptors |
	adaptors := WAAdmin serverAdaptors .
	^ adaptors isEmpty 
		ifTrue: [8080] 	" lets hardcode.. "
		ifFalse: [adaptors first port]