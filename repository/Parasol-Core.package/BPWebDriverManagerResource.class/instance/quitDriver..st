private
quitDriver: driver

	[ driver quit ] on: (BPNoSuchSessionException , BPUnknownServerException) do: [ :ex | ]