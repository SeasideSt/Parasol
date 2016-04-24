versions
version020: spec
	<version: '0.20' imports: #('1.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'CarstenHaerle'.
		spec timestamp: '9/11/2014 17:05'.
		spec project: 'Seaside3' with: #'stable'.
		spec 
			package: 'Parasol-Core' with: 'Parasol-Core-CarstenHaerle.51';
			package: 'Parasol-Tests' with: 'Parasol-Tests-CarstenHaerle.27';
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
			baseline: 'ZincHTTP' ;
			project: 'Seaside3' with: #'stable'.
		spec package: 'Parasol-GemStone' with: 'Parasol-GemStone-JohanBrichau.10'. ].

	spec for: #'gs2.4.x' do: [
		spec baseline: 'ZincHTTP' . ].

	spec for: #'gs3.1.x' do: [
		spec baseline: 'ZincHTTP' . ].
