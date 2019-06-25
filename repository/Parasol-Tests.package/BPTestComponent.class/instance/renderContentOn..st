rendering
renderContentOn: html

	html paragraph: 'Supercalifragilisticexpialidocious'.
	html form get; with: [
		html textInput id: 'inputField'; callback: [ :newValue | inputFieldValue := newValue ].
		html textInput name: 'secretField'; type: 'hidden'.
		html submitButton id: 'submitButton'.
	].
	html image id: 'image'; style: 'position:absolute;left:300px;top:400px'; url: (BPTestComponentFiles / #testPng).
	html div id: 'testDiv1'; with: [
		html paragraph id: 'testDiv1p'; class: 'c1'.
	].
	html div id: 'testDiv2'; with: [
		html paragraph id: 'testDiv2p1'; class: 'c2'.
		html paragraph id: 'testDiv2p2'; class: 'c1'.
		html paragraph id: 'testDiv2p3'; class: 'c1'.
	].
	html anchor id: 'anchor1'; with: 'A Link'.
	html anchor id: 'anchor2'; with: 'A Link'.
	html paragraph
		id: 'testParagraph';
		class: 'testclass';
		with: 'Bla bla'.
	html div
		class: 'testclass2';
		with: ''.
	html anchor
		class: 'testclass2';
		with: 'foobar'.
	html anchor
		url: 'http://en.wikipedia.org/wiki/Main_Page';
		target: '_blank';
		with: 'Wikipedia'.
	html form multipart; with: [
		html fileUpload callback: [ :value | receivedFile := value ].
		html submitButton id: 'sendFile'; with: 'Send File'
	].
	
	html heading
		level: 3;
		with: 'Cookies'.
	html anchor
		callback: [ self requestContext response addCookie: self parasolTestCookie ];
		with: 'Set test cookie'.
	html anchor
		callback: [ self requestContext response deleteCookie: self parasolTestCookie ];
		with: 'Delete test cookie'.
		
	html heading
		level: 3;
		with: 'Alerts'.
		
	html anchor 
		url: 'javascript:alert(''How how how'')';
		with: 'Alert!'
