facade
pngImageFromByteArray: aByteArray

	^(PNGImageReader new from: aByteArray readStream) image