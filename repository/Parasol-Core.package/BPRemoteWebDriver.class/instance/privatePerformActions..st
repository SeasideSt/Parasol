private
privatePerformActions: actions

	| composedActions |
	
	composedActions := OrderedCollection new.
	actions do: [ :action |
		composedActions addAll: action privatePerformActionJSON ].

	self httpPostHandleResponse: (self baseSessionURL , 'actions')
		jsonData: (Dictionary new
			at: 'actions' put: (Array with: (Dictionary new
				at: 'type' put: 'pointer';
				at: 'id' put: 'default mouse';
				at: 'parameters' put: (Dictionary new
					at: 'pointerType' put: 'mouse';
					yourself);
				at: 'actions' put: (Array withAll: composedActions);
				yourself));
			yourself).
