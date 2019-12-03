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
	to compute an element's in-view center point [2]. It may not be compatible with the
	interpretation of in-view center point in other WebDriver implementations [3].
	
	[1] https://github.com/w3c/webdriver/issues/1171
	[2] https://chromium.googlesource.com/chromium/src/+/09b268ecde9156723d5ad561de298789b70dffa8/chrome/test/chromedriver/js/get_element_location.js#11
	[3] https://bugs.chromium.org/p/chromedriver/issues/detail?id=3190"

	| translatedOffsetCoordinates translatedOffset |
	
	translatedOffsetCoordinates := driver executeScript: '
		return (function(element, originalOffsetX, originalOffsetY) {
			var rectangles = element.getClientRects();
			var rect = rectangles[0];
			var left = Math.max(0, rect.left);
			var right = Math.min(window.innerWidth, rect.right);
			var top = Math.max(0, rect.top);
			var bottom = Math.min(window.innerHeight, rect.bottom);
			while (element.parentElement != null &&
				 element.parentElement != document.body &&
				 element.parentElement.getClientRects().length > 0) {
			  var parentStyle = window.getComputedStyle(element.parentElement);
			  var overflow = parentStyle.getPropertyValue("overflow");
			  var overflowX = parentStyle.getPropertyValue("overflow-x");
			  var overflowY = parentStyle.getPropertyValue("overflow-y");
			  var parentRect = element.parentElement.getClientRects()[0];
			  if (parentRect.right > left && parentRect.bottom > top &&
				right > parentRect.left && bottom > parentRect.top) {
				if (overflow == "auto" || overflow == "scroll" || overflow == "hidden") {
				left = Math.max(left, parentRect.left);
				right = Math.min(right, parentRect.right);
				top = Math.max(top, parentRect.top);
				bottom = Math.min(bottom, parentRect.bottom);
				} else {
				if (overflowX == "auto" || overflowX == "scroll" ||
					overflowX == "hidden") {
				  left = Math.max(left, parentRect.left);
				  right = Math.min(right, parentRect.right);
				}
				if (overflowY == "auto" || overflowY == "scroll" ||
					overflowY == "hidden") {
				  top = Math.max(top, parentRect.top);
				  bottom = Math.min(bottom, parentRect.bottom);
				}
				}
			  }
			  element = element.parentElement;
			}
			var x = 0.5 * (left + right);
			var y = 0.5 * (top + bottom);
			return [ (Math.floor(rect.left) + originalOffsetX) - Math.floor(x), (Math.floor(rect.top) + originalOffsetY) - Math.floor(y) ];
		}).apply(null, arguments)' with: (Array with: webElement with: offset x with: offset y).
	translatedOffset := Point x: translatedOffsetCoordinates first y: translatedOffsetCoordinates second.
	self moveToElement: webElement centerOffset: translatedOffset.
