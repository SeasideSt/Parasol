accessing
customProjectAttributes

  ^ (Smalltalk at: #'WAAdmin' ifAbsent: [ nil ])
    	ifNil: [ #(#'loadSeaside') ]
    	ifNotNil: [ #() ]