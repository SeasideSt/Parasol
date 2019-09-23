rendering
renderContentOn: html

	html anchor
		url: '#';
		onClick: 'document.getElementById("result").innerHTML = confirm("Confirm Test?") ? "OK" : "Cancel"';
		with: 'Confirm'.

	html span
		id: 'result';
		with: '-'.
