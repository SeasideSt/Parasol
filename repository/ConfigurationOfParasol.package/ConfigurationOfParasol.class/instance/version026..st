versions
version026: spec
	<version: '0.26' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'JohanBrichau'.
		spec timestamp: '03/11/2016 09:38'.
		spec project: 'Seaside3' with: #'stable'.
		spec 
			package: 'Parasol-Core' with: 'Parasol-Core-KrisGybels.60';
			package: 'Parasol-Tests' with: 'Parasol-Tests-KrisGybels.31';
			package: 'Parasol-Convenience' with: 'Parasol-Convenience-ThomasCleenewerck.16'. ].

	spec for: #'squeak' do: [
		spec 
			project: 'Seaside3' with: #'stable';
			project: 'WebClient' with: #'stable'.
		spec package: 'Parasol-Squeak' with: 'Parasol-Squeak-KrisGybels.10'. ].

	spec for: #'pharo' do: [
		spec project: 'ZincHTTP' with: #'stable'.
		spec package: 'Parasol-Pharo' with: 'Parasol-Pharo-KrisGybels.11'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'Seaside3' with: #'stable'.
		spec package: 'Parasol-GemStone' with: 'Parasol-GemStone-KrisGybels.12'. ].
