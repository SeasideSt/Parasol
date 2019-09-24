private
privateCSSUnicodeEscapeSequenceString: string

	"This method is used to ensure that characters with special meaning in CSS selectors get escaped,
	and does so by simply escaping all characters. This may make debugging errors from the driver
	harder though, so this should probably be changed to only escape characters when necessary."

	^ String streamContents: [ :stream |
		string do: [ :character |
			stream nextPut: $\.
			stream nextPutAll: (character codePoint printStringBase: 16) ] ]
