misc
moveToElement: webElement offset: offset

	"This method emulates the old behavior of #moveToElement:offset: from before the
	transition to the W3C WebDriver protocol, but is not guaranteed to always work.
	This method used to map to an action in the JSON wire protocol where the offset
	was interpreted relative to the top-left corner of the element. The W3C WebDriver
	protocol only offers a similar action where the offset is interpreted relative
	to the in-view center point of the element (which is what #moveToElement:centerOffset:
	maps to) [1]. This method translates the former offset to the latter. One restriction is
	that the translation is done using the position of the element when the BPCompositeAction
	is constructed, rather than when the move mouse action is executed; in a complicated
	BPCompositeAction, the element's in-view center point may change because of an
	earlier action. The script that is used is (based on) the one used in chromedriver
	to compute an element's in-view center point [2].
	
	[1] https://github.com/w3c/webdriver/issues/1171
	[2] https://chromium.googlesource.com/chromium/src/+/093f9b4be6509dc8df62dbd46b8ecc70f2dcf391/chrome/test/chromedriver/js/get_element_location.js#66"

	| translatedOffsetCoordinates translatedOffset |
	
	translatedOffsetCoordinates := driver executeScript: '
		return (function(element, originalOffsetX, originalOffsetY) {
			function getFirstNonZeroWidthHeightRect(rects) {
				for (var i = 0; i < rects.length; i++) {
					var rect = rects[i];
					if (rect.height > 0 && rect.width > 0)
						return rect;
				}
				return rects[0];
			}
			var rectangles = element.getClientRects();
			var rect = getFirstNonZeroWidthHeightRect(rectangles);
			var left = Math.max(0, rect.left);
			var right = Math.min(window.innerWidth, rect.right);
			var top = Math.max(0, rect.top);
			var bottom = Math.min(window.innerHeight, rect.bottom);
			var x = 0.5 * (left + right);
			var y = 0.5 * (top + bottom);
			return [ (Math.floor(rect.left) + originalOffsetX) - Math.floor(x), (Math.floor(rect.top) + originalOffsetY) - Math.floor(y) ];
		}).apply(null, arguments)' with: (Array with: webElement with: offset x with: offset y).
	translatedOffset := Point x: translatedOffsetCoordinates first y: translatedOffsetCoordinates second.
	self moveToElement: webElement centerOffset: translatedOffset.
