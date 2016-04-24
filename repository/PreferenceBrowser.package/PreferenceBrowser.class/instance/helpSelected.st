preferences search
helpSelected 
	"Open up a workspace with explanatory info in it about the Preference Browser"
	Workspace new
		contents: self helpText;
		openLabel: self windowTitle.