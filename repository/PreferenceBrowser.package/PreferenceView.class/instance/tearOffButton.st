user interface
tearOffButton
	"Hand the user a button the can control this"

	| aButton |
	aButton := self representativeButtonWithColor: self preference defaultBackgroundColor inPanel: nil.
	aButton borderWidth: 1; borderColor:  Color black; useRoundedCorners.
	aButton openInHand