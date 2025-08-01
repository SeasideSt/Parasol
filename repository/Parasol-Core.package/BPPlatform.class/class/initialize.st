class initialization
initialize

	Platforms := OrderedCollection new.
	Platforms add: (self withName: 'WINDOWS' partOfOSNames: #('') toStringName: 'WINDOWS' familyName: 'ANY').
	Platforms add: (self withName: 'XP' partOfOSNames: #('Windows Server 2003' 'xp' 'windows' 'winnt') toStringName: 'XP' familyName: 'WINDOWS').
	Platforms add: (self withName: 'VISTA' partOfOSNames: #('windows vista' 'Windows Server 2008' 'windows 7' 'win7') toStringName: 'VISTA' familyName: 'WINDOWS').
	Platforms add: (self withName: 'WIN8' partOfOSNames: #('Windows Server 2012' 'windows 8' 'win8') toStringName: 'WIN8' familyName: 'WINDOWS').
	Platforms add: (self withName: 'WIN8_1' partOfOSNames: #('windows 8.1' 'win8.1') toStringName: 'WIN8_1' familyName: 'WINDOWS').
	Platforms add: (self withName: 'WIN11' partOfOSNames: #('Windows 11' 'win11') toStringName: 'WIN11' familyName: 'WINDOWS').

	Platforms add: (self withName: 'MAC' partOfOSNames: #('mac' 'darwin' 'macOS' 'mac os x' 'os x') toStringName: 'MAC' familyName: 'ANY').
	Platforms add: (self withName: 'SNOW_LEOPARD' partOfOSNames: #('snow leopard' 'os x 10.6') toStringName: 'OS X 10.6' familyName: 'MAC').
	Platforms add: (self withName: 'MOUNTAIN_LION' partOfOSNames: #('mountain lion' 'os x 10.8') toStringName: 'OS X 10.8' familyName: 'MAC').
	Platforms add: (self withName: 'MAVERICKS' partOfOSNames: #('mavericks' 'os x 10.9') toStringName: 'OS X 10.9' familyName: 'MAC').
	Platforms add: (self withName: 'YOSEMITE' partOfOSNames: #('yosemite' 'os x 10.10') toStringName: 'OS X 10.10' familyName: 'MAC').

	Platforms add: (self withName: 'UNIX' partOfOSNames: #('solaris' 'bsd') toStringName: 'UNIX' familyName: 'ANY').
	Platforms add: (self withName: 'LINUX' partOfOSNames: #('linux') toStringName: 'LINUX' familyName: 'UNIX').
	Platforms add: (self withName: 'ANDROID' partOfOSNames: #('android' 'dalvik') toStringName: 'ANDROID' familyName: 'LINUX').
	Platforms add: (self withName: 'ANY' partOfOSNames: #('') toStringName: 'ANY' familyName: 'ANY').

	PlatformsByName := Dictionary new.
	Platforms do: [ :platform |
		PlatformsByName at: platform name put: platform ].
