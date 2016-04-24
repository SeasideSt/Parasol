versions
version018: spec
	<version: '0.18' imports: #('1.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec project: 'Seaside3' with: #stable.
		spec 
			package: 'Parasol-Core' with: 'Parasol-Core-JohanBrichau.38';
			package: 'Parasol-Tests' with: 'Parasol-Tests-JohanBrichau.17';
			package: 'Parasol-Convenience' with: 'Parasol-Convenience-JohanBrichau.8'. ].

	spec for: #'squeak' do: [
		spec 
			project: 'Seaside3' with: #stable;
			project: 'WebClient' with: #stable.
		spec package: 'Parasol-Squeak' with: 'Parasol-Squeak-topa.1'. ].

	spec for: #'pharo' do: [
		spec project: 'ZincHTTP' with: #'stable'.
		spec package: 'Parasol-Pharo' with: 'Parasol-Pharo-JohanBrichau.4'. ].

	spec for: #'gemstone' do: [
		spec 
			baseline: 'ZincHTTP' ;
			project: 'Seaside3' with: #stable.
		spec package: 'Parasol-GemStone' with: 'Parasol-GemStone-JohanBrichau.5'].

	spec for: #'gs2.4.x' do: [
		spec baseline: 'ZincHTTP' . ].

	spec for: #'gs3.1.x' do: [
		spec baseline: 'ZincHTTP' . ].
