json
jsonOn: stream
	"Pharo specific override to render the receiver."	

	(Dictionary new at: 'ELEMENT' put: elementID; yourself) jsonOn: stream