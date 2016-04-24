versions
version09: spec
	<version: '0.9' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'JohanBrichau'.
		spec timestamp: '4/14/2013 13:11'.
		spec project: 'Seaside30' with: '3.0.8'.
		spec 
			package: 'Parasol-Core' with: 'Parasol-Core-topa.22';
			package: 'Parasol-Tests' with: 'Parasol-Tests-AndyKellens.9';
			package: 'Parasol-Convenience' with: 'Parasol-Convenience-JohanBrichau.4'. ].

	spec for: #'squeak' do: [
		spec project: 'Seaside30' with: #stable.
		spec project: 'WebClient' with: #stable.
		spec package: 'Parasol-Squeak' with: 'Parasol-Squeak-topa.1'. ].

	spec for: #'pharo' do: [
		spec project: 'ZincHTTP' with: #'stable'. ].

	spec for: #'pharo1.x' do: [
		spec package: 'Parasol-Pharo' with: 'Parasol-Pharo-KrisGybels.3'. ].

	spec for: #'pharo2.x' do: [
		spec project: 'Seaside30' with: '3.0.8'. ].

	spec for: #'gemstone' do: [
		spec 
			baseline: 'ZincHTTP' ;
			project: 'Seaside30' .
		spec package: 'Parasol-Core'. ].

	spec for: #'gs2.4.x' do: [
		spec baseline: 'ZincHTTP' . ].

	spec for: #'gs3.1.x' do: [
		spec baseline: 'ZincHTTP' . ].
