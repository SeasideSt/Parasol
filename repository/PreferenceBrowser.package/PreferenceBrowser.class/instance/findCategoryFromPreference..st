find
findCategoryFromPreference: prefSymbol
	"Find all categories in which the preference occurs"

	| aMenu| 
	aMenu := MenuMorph new defaultTarget: self.
	(preferences categoriesContainingPreference: prefSymbol) do:
		[:aCategory | aMenu add: aCategory target: self selector: #selectedCategory: argument: aCategory].
	aMenu popUpInWorld