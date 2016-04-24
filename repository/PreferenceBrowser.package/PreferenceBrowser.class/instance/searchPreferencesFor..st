preferences search
searchPreferencesFor: pattern
	| result |
	result := pattern asString asLowercase withBlanksTrimmed.
	result ifEmpty: [^self].
	searchResults := self allPreferences select: [:aPreference |
		(aPreference name includesSubstring: result caseSensitive: false) or:
				[aPreference helpString includesSubstring: result caseSensitive: false]].		
	self selectSearchResultsCategory.
	self lastExecutedSearch: pattern.
