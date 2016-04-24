utility methods
caseInsensitiveBeginsWith: prefix in: string
	^(string findString: prefix startingAt: 1 caseSensitive: false) = 1