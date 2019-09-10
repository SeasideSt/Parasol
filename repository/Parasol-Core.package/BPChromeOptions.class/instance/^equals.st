comparing
= other

	^ (self class = other class)  and: [ (dict = other privateCapabilitiesDictionary) & (arguments = other privateArguments) & (experimentalOptions = other privateExperimentalOptions) ]