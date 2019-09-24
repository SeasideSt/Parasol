misc
moveToElement: webElement offset: offset

	"This method emulates the old behavior of #moveToElement:offset: from before the
	transition to the W3C WebDriver protocol, but is not guaranteed to always work.
	This method used to map to an action in the JSON wire protocol where the offset
	was interpreted relative to the top-left corner of the element. The W3C WebDriver
	protocol only offers a similar action where the offset is interpreted relative
	to the in-view center point of the element (which is what #moveToElement:centerOffset:
	maps to). This method translates the former offset to the latter. One restriction is
	that the translation is done using the position of the element when the BPCompositeAction
	is constructed, rather than when the move mouse action is executed; in a complicated
	BPCompositeAction, the element's in-view center point may change because of an
	earlier action."

	| translatedOffsetCoordinates translatedOffset |
	
	translatedOffsetCoordinates := driver executeScript: '
		return (function(element, originalOffsetX, originalOffsetY) {
			var rectangle = element.getClientRects()[0];
			var left = Math.max(0, Math.min(rectangle.x, rectangle.x + rectangle.width));
			var right = Math.min(window.innerWidth, Math.max(rectangle.x, rectangle.x + rectangle.width));
			var top = Math.max(0, Math.min(rectangle.y, rectangle.y + rectangle.height));
			var bottom = Math.min(window.innerHeight, Math.max(rectangle.y, rectangle.y + rectangle.height));
			var x = Math.floor((left + right) / 2);
			var y = Math.floor((top + bottom) / 2);
			return [ (Math.floor(rectangle.left) + originalOffsetX) - x, (Math.floor(rectangle.top) + originalOffsetY) - y ];
		}).apply(null, arguments)' with: (Array with: webElement with: offset x with: offset y).
	translatedOffset := Point x: translatedOffsetCoordinates first y: translatedOffsetCoordinates second.
	self moveToElement: webElement centerOffset: translatedOffset.
