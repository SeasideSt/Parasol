accessing
baseDriverURL
	| credentialString |
	credentialString := self class username.
	credentialString := self class password
		ifNotEmpty: [ :password | credentialString , ':' , password ].
	credentialString := credentialString
		ifNotEmpty: [ credentialString , '@' ].
	^ self class scheme , '://' , credentialString
		, self class serverHost , ':' , self class serverPort printString
		, '/wd/hub/'