misc
build

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/interactions/Actions.html#build()
	"
	
	^ [ action ] ensure: [ action := BPCompositeAction driver: driver ]