tests
testParseStatusFromJson

	| json status parsed |
	json := '{"sessionId":"1350900111656","status":0,"value":{"ELEMENT":"0"},"class":"org.openqa.selenium.remote.Response","hCode":1690596504}'.
	parsed := BPSmalltalkPlatform current jsonRead: json.
	status := parsed at: 'status'.
	self assert: 0 = status.