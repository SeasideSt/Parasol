alerts
dismissAlert
	"https://www.w3.org/TR/webdriver1/#dismiss-alert"

	^ self handleResponse: (
		self 
			httpPost: self baseSessionURL , 'alert/dismiss' 
			jsonData: Dictionary new)