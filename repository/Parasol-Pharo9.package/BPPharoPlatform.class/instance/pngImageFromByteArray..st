facade
pngImageFromByteArray: aByteArray
	^ PNGReadWriter formFromStream: aByteArray readStream.