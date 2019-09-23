misc
getCookies

	^ driver httpGetHandleResponse: (driver baseSessionURL , 'cookie')
		onSuccess: [ :result |
			| cookies |
			cookies := Set new.
			(result at: 'value') do: [ :cookieJSONObject |
				cookies add: (self privateCookieFromJSONObject: cookieJSONObject) ].
			cookies ]