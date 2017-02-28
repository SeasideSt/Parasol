private
waitUntil: valueBlock checkEvery: intervalDuration timeoutAfter: timeoutDuration

	^ self waitUntil: valueBlock value is: [ :value | value ] checkEvery: intervalDuration timeoutAfter: timeoutDuration with: [ :value | value ]