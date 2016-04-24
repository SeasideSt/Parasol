instance creation
open
	| browser |
	browser := self new.
	(PreferenceBrowserMorph withModel: browser)
		openInWorld.
	^browser.	