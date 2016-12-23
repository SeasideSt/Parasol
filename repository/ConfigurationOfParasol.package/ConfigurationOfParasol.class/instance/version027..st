versions
version027: spec
	<version: '0.27' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'AndyKellens'.
		spec timestamp: '22/11/2016 14:40'.
		spec project: 'Seaside3' with: #'stable'.
		spec 
			package: 'Parasol-Core' with: 'Parasol-Core-AndyKellens.63';
			package: 'Parasol-Tests' with: 'Parasol-Tests-JohanBrichau.34';
			package: 'Parasol-Convenience' with: 'Parasol-Convenience-AndyKellens.17'. ].

	spec for: #'squeak' do: [
		spec 
			project: 'Seaside3' with: #'stable';
			project: 'WebClient' with: #'stable'.
		spec package: 'Parasol-Squeak' with: 'Parasol-Squeak-KrisGybels.10'. ].

	spec for: #'pharo' do: [
		spec project: 'ZincHTTP' with: #'stable'.
		spec package: 'Parasol-Pharo' with: 'Parasol-Pharo-JohanBrichau.13'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'Seaside3' with: #'stable'.
		spec package: 'Parasol-GemStone' with: 'Parasol-GemStone-AndyKellens.13'. ].
