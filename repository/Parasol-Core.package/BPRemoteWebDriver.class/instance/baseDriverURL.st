accessing
baseDriverURL
	| credentialString |
	credentialString := self class username.
	self class password
		ifNotEmpty: [ :password | credentialString := credentialString , ':' , password ].
	credentialString
		ifNotEmpty: [ credentialString := credentialString , '@' ].
	^ self class scheme , '://' , credentialString
		, self class serverHost , ':' , self class serverPort printString
		, '/wd/hub/'