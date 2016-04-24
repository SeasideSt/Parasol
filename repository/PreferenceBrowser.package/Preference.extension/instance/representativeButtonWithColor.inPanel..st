*PreferenceBrowser
representativeButtonWithColor: aColor inPanel: aPanel
	| view |
	view := self viewForPanel: aPanel.
	^view ifNotNil: [view representativeButtonWithColor: aColor inPanel: aPanel]