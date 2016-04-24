testing
is: otherPlatform

	"http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/Platform.html#is-org.openqa.selenium.Platform-"
	
	^ (self == otherPlatform) or: [
		| ownFamily |
		ownFamily := self family.
		(ownFamily == self) not and: [ ownFamily is: otherPlatform ] ]