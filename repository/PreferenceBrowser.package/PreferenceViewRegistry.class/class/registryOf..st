instance creation
registryOf: aSymbol
	^self registries at: aSymbol ifAbsentPut: [self new]