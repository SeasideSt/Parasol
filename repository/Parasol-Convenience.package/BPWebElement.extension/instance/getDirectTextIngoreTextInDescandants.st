*Parasol-Convenience
getDirectTextIngoreTextInDescandants
	| children text |
	children := self findElementsByXPath: '*'.
	text := self getText.
	"elements can occur before the text nodes and after one, hence we cannot simply trim from the start nor from the rear"
	children do: [ :c | text := text copyReplaceAll: c getText with: '' ].
	^text trimBoth  