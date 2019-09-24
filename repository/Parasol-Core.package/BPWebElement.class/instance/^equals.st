comparing
= other

	^ (other isKindOf: self class) and: [ self elementID = other elementID ]
