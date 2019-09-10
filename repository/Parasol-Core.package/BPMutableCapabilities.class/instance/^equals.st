comparing
= other

	^ (self class = other class)  and: [ self asDictionary = other asDictionary ]