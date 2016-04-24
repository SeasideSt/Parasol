running
testGetScreenshotAsByteArray

	|  form screenshotByteArray |

	screenshotByteArray := driver getScreenshotAsByteArray.
	form := BPSmalltalkPlatform current pngImageFromByteArray: screenshotByteArray.
	self assert: form width > 0.
	self assert: form height > 0.