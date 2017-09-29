rendering
renderContentOn: html

	html document
		addLoadScript: (JSStream on: 'window.onclick = function() { document.body.innerHTML = "Clicked!" }').

	html text: 'Did not click yet.'.
