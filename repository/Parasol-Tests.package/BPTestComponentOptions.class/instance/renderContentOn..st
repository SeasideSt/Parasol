rendering
renderContentOn: html

	html div: [
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
			with: 'Respond with Cookies' ].

	html div: [
		html anchor
			url: '#';
			onClick: (JSStream on: 'var element = this; setTimeout(function () { element.innerHTML += " FOO"; }, 2000);');
			with: 'Append FOO to this Anchor''s Text After 2 Seconds' ].
