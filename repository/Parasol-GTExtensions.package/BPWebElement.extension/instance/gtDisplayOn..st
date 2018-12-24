*Parasol-GTExtensions
gtDisplayOn: stream
	stream 
		nextPut: $<;
		"nextPutAll: (self getAttribute: 'tag');"
		space;
		nextPutAll: '/>'.