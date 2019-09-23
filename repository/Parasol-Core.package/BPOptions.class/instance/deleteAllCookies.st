misc
deleteAllCookies

	driver handleResponse: (driver httpDelete: (driver baseSessionURL , 'cookie'))
