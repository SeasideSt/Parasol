performing
httpDelete: url
	| result |
	System commitTransaction ifFalse:[ self error: 'Parasol error: commitTransaction failed.' ].
	[ result := self handleRequest: [ self httpClient url: url; delete; response ] ] 
			ensure: [ System commitTransaction ifFalse:[ self error: 'Parasol error: commitTransaction failed.'].].
	^ result