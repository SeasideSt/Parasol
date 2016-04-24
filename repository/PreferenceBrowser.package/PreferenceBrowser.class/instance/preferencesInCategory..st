accessing
preferencesInCategory: aCategory
	^(preferences preferenceObjectsInCategory: aCategory) asSortedCollection:
		[:pref1 :pref2 | 
				pref1 viewRegistry viewOrder  <pref2 viewRegistry viewOrder  or:
						[pref1 viewRegistry viewOrder  =pref2 viewRegistry viewOrder 
							 &(pref1 name  <pref2 name)]]