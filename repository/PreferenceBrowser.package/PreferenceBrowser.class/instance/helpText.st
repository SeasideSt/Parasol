preferences search
helpText
	^(String streamContents: [:str |
		str nextPutAll:
'Many aspects of the system are goberned by the settings of various ''Preferences''.

Click on any of the categories shown at the left list to see all the preferences in that category. Or type into the search box at the bottom of the window, then hit Search, and all Preferences matching whatever you typed in will appear in the ''search results'' category. A preference is considered to match your search if either its name matches the text *or* if anything in the preference''s help text does.

To find out more about any particular Preference just select it and its help text will appear.

Some preferences can be ''local'' instead of global. When a preference is set as global its value will apply to whatever project you are in. A local preference will only be valid in the project that you set it in.

The ''Save'' button allow you to quickly save your current settings so it can later be restored with the ''Load'' button.

To carry your settings to another Squeak you might want to use the ''Save to disk'' and ''Load from disk'' buttons. The save to disk option will store all your settings in a ''my.prefs'' file in your Squeak''s current directory.

Lastly, you can use the "theme..." button to set multiple preferences all at once; click on the "theme..." button and try the themes already provided with your Squeak image.']) translated