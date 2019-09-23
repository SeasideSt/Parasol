rendering
renderContentOn: html

	html anchor
		callback: [
			self requestContext response addCookie: (self requestContext newCookie
				key: 'test_cookie_1';
				value: 'Test Cookie 1 Value';
				yourself).
			self requestContext response addCookie: (self requestContext newCookie
				key: 'test_cookie_2';
				value: 'Test Cookie 2 Value';
				yourself) ];
		with: 'Respond with Cookies'
