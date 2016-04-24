json
jsonWriteOn: stream
	"VisualWorks specific override for rendering the receiver. In case the JSONReader package is used instead of Javascript-Core from Seaside."

	((Dictionary new) at: 'ELEMENT' put: elementID; yourself) jsonWriteOn: stream