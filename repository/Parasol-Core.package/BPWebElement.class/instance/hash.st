comparing
hash

	"In #= we need to ask the remote driver to compare the elements, but we can't ask it for #hash since the wire protocol
		does not define an operation for that. We therefore resort to returning a constant hash:"
	
	^ 0