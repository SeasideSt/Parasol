versions
version024: spec
	<version: '0.24' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'JohanBrichau'.
		spec timestamp: '05/04/2015 09:23'.
		spec project: 'Seaside3' with: #'stable'.
		spec 
			package: 'Parasol-Core' with: 'Parasol-Core-KrisGybels.52';
			package: 'Parasol-Tests' with: 'Parasol-Tests-KrisGybels.28';
			package: 'Parasol-Convenience' with: 'Parasol-Convenience-JohanBrichau.13'. ].

	spec for: #'squeak' do: [
		spec 
			project: 'Seaside3' with: #'stable';
			project: 'WebClient' with: #'stable'.
		spec package: 'Parasol-Squeak' with: 'Parasol-Squeak-topa.1'. ].

	spec for: #'pharo' do: [
		spec project: 'ZincHTTP' with: #'stable'.
		spec package: 'Parasol-Pharo' with: 'Parasol-Pharo-KrisGybels.9'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'Seaside3' with: #'stable'.
		spec package: 'Parasol-GemStone' with: 'Parasol-GemStone-JohanBrichau.11'. ].

