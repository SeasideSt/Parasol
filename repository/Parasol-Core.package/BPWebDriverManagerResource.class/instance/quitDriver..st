private
quitDriver: driver

	[ driver quit ] on: BPUnknownServerException do: [ :ex | ]