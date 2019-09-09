predefined
chromeHeadless

	"This method is deprecated and should not be used."

	^ BPChromeOptions new setHeadless: true; addArguments: #('no-sandbox'); yourself
