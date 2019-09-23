misc
deleteCookieNamed: cookieName

	driver handleResponse: (driver httpDelete: (driver baseSessionURL , 'cookie/' , cookieName))
