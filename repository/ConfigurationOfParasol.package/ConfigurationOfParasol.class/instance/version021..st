versions
version021: spec
	<version: '0.21' imports: #('1.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'KrisGybels'.
		spec timestamp: '9/12/2014 09:19'.
		spec project: 'Seaside3' with: #'stable'.
		spec 
			package: 'Parasol-Core' with: 'Parasol-Core-KrisGybels.52';
			package: 'Parasol-Tests' with: 'Parasol-Tests-KrisGybels.28';
			package: 'Parasol-Convenience' with: 'Parasol-Convenience-CarstenHaerle.12'. ].

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
		spec package: 'Parasol-GemStone' with: 'Parasol-GemStone-JohanBrichau.10'. ].

