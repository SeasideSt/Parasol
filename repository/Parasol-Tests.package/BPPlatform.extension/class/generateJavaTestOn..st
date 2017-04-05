*Parasol-Tests-development
generateJavaTestOn: stream

	stream
		nextPutAll: 'import org.junit.*;'; cr;
		nextPutAll: 'import static org.junit.Assert.*;'; cr;
		nextPutAll: 'import org.openqa.selenium.*;'; cr;
		cr;
		nextPutAll: 'public class Tests {'; cr;
		nextPutAll: '@Test'; cr;
		nextPutAll: 'public void testPlatform() {'; cr.

	self values do: [ :platform |
		stream 
			nextPutAll: 'assertSame("Test: family() of ';
			nextPutAll: platform name;
			nextPutAll: '", Platform.';
			nextPutAll: platform family name;
			nextPutAll: ', Platform.';
			nextPutAll: platform name;
			nextPutAll: '.family());';
			cr;
			nextPutAll: 'assertEquals("Test: toString() of ';
			nextPutAll: platform name;
			nextPutAll: '", "' , platform asString , '", Platform.';
			nextPutAll: platform name;
			nextPutAll: '.toString());';
			cr;
			nextPutAll: 'assertEquals("Test: getPartOfOsName() of ';
			nextPutAll: platform name;
			nextPutAll: '", new String[]{'.
		platform getPartOfOsName do: [ :part | stream nextPut: $"; nextPutAll: part; nextPut: $" ] separatedBy: [ stream nextPutAll: ', ' ].
		stream
			nextPutAll: '}, ';
			nextPutAll: 'Platform.';
			nextPutAll: platform name;
			nextPutAll: '.getPartOfOsName());';
			cr ].
	stream nextPutAll: '}}'; cr.
