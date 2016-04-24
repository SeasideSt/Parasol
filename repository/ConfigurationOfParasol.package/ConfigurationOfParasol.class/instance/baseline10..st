baselines
baseline10: spec

	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec
			blessing: #baseline;
			repository: 'http://ss3.gemstone.com/ss/Parasol';
			yourself.
		spec 
			project: 'Seaside30' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					version: #stable;
					file: 'ConfigurationOfSeaside3';
					repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/'];
			yourself.
		spec
			package: 'Parasol-Core';
			package: 'Parasol-Tests' with: [ spec requires: #('Parasol-Core' 'Seaside30') ];
			package: 'Parasol-Convenience' with: [ spec requires: #('Parasol-Core') ];
			yourself.
		spec
			group: 'default' with: #('Parasol-Core' 'Parasol-Convenience');
			group: 'dev' with: #('Parasol-Tests' 'default');
			yourself.
	].

	spec for: #squeak do: [
		spec
			project: 'Seaside30' with: [	spec loads: #('Core' 'WebClient-Seaside')];
			yourself.
		spec 
			project: 'WebClient' with: [
				spec
					className: 'ConfigurationOfWebClient';
					version: #stable;
					file: 'ConfigurationOfWebClient';
					repository: 'http://www.squeaksource.com/MetacelloRepository'];
			yourself.
		spec
			package: 'Parasol-Squeak' with: [ spec requires: #('Parasol-Core' 'Seaside30' 'WebClient') ];
			yourself.
		spec
			group: 'default' 	with: #('Parasol-Squeak');
			yourself.
	].

	spec for: #pharo do: [
		"Sets the Zinc prerequisite for Pharo"
			spec 
				project: 'ZincHTTP'
				with: 
					[ spec
						className: 'ConfigurationOfZincHTTPComponents';
						versionString: #stable;
						file: 'ConfigurationOfZincHTTPComponents';
						loads: 'Core';
						repository: 'http://mc.stfx.eu/ZincHTTPComponents'].
		spec 
			package: 'Parasol-Core' 
			with: [ spec requires: #('ZincHTTP') ].
	].

	spec for: #'pharo1.x'  do: [
		spec 
			project: 'Seaside30' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: '3.0.7.1';
					file: 'ConfigurationOfSeaside3';
					loads: #('Core' 'Seaside-Adaptors-Comanche');
					repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/'];
			yourself.
		spec 
			package: 'Parasol-Pharo' with: [ spec requires: #('Parasol-Core')];
			yourself.
		spec
			group: 'default' 	with: #('Parasol-Pharo');
			yourself.
	].

	spec for: #'pharo2.x' do: [
		spec
			project: 'Seaside30' overrides: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: '3.0.8';
					file: 'ConfigurationOfSeaside3';
					loads: #('Core' 'Zinc-Seaside');
					repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/'];
			yourself.
			
			spec 
			package: 'Parasol-Pharo' with: [ spec requires: #('Parasol-Core')];
			yourself.
		spec
			group: 'default' 	with: #('Parasol-Pharo');
			yourself.
	].
	
	spec for: #gemstone do: [
		spec baseline: 'ZincHTTP'.
		spec 
			project: 'Seaside30' with: [ spec loads: #('Core') ];
			yourself.
		spec
			package: 'Parasol-Core' with: [ spec requires: #('ZincHTTP') ];
			yourself.
	].
	
	spec for: #'gs2.4.x' do: [
		spec 
			baseline: 'ZincHTTP' with: [
				spec
					className: 'BaselineOfZinc';
					loads: 'Core';
					repository: 'github://glassdb/zinc:gemstone2.4/repository'];
			yourself.
	].
		
	spec for: #'gs3.1.x' do:[
		spec 
			baseline: 'ZincHTTP' with: [
				spec
					className: 'BaselineOfZinc';
					loads: 'Core';
					repository: 'github://glassdb/zinc:gemstone3.1/repository'];
			yourself.
	].
