event handling
keyPressed: anEvent
	self selectedCategory 
		ifNil: [^self].
	anEvent keyValue = 30
		ifTrue: [^self upKeyPressed: anEvent].
	anEvent keyValue = 31
		ifTrue: [^self downKeyPressed: anEvent].
	anEvent keyValue = 1 
		ifTrue: [^self homeKeyPressed: anEvent].
	anEvent keyValue = 4
		ifTrue: [^self endKeyPressed: anEvent].
	anEvent keyValue = 11
		ifTrue: [^self pageUpKeyPressed: anEvent].
	anEvent keyValue = 12
		ifTrue: [^self pageDownKeyPressed: anEvent].
	self basicKeyPressed: anEvent.