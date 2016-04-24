baselines
baseline11: spec

	<version: '1.1-baseline'>
	
	spec for: #common do: [
		spec
			blessing: #baseline;
			repository: 'http://ss3.gemstone.com/ss/Parasol'.
			
		spec 
			project: 'Seaside3' 
			with: [
				spec
					className: 'ConfigurationOfSeaside3';
					version: #stable;
					loads: #('Tests' 'Zinc-Seaside');
					repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/'].
				
		spec
			package: 'Parasol-Core';
			package: 'Parasol-Tests' with: [ spec requires: #('Parasol-Core' 'Seaside3') ];
			package: 'Parasol-Convenience' with: [ spec requires: #('Parasol-Core') ].
			
		spec
			group: 'default' with: #('Parasol-Core' 'Parasol-Convenience');
			group: 'dev' with: #('Parasol-Tests' 'default').
	].

	spec for: #squeak do: [
		spec
			project: 'Seaside3' 
			with: [ spec loads: #('Tests' 'WebClient-Seaside')].
				
		spec 
			project: 'WebClient' with: [
				spec
					className: 'ConfigurationOfWebClient';
					version: #stable;
					repository: 'http://www.squeaksource.com/MetacelloRepository'].
		spec
			package: 'Parasol-Squeak' with: [ spec requires: #('Parasol-Core' 'Seaside30' 'WebClient') ].
		spec
			 group: 'default' 	with: #('Parasol-Squeak').
	].

	spec for: #pharo do: [
		"Sets the Zinc prerequisite for Pharo"
			spec 
				project: 'ZincHTTP'
				with: 
					[ spec
						className: 'ConfigurationOfZincHTTPComponents';
						versionString: #stable;
						loads: 'Core';
						repository: 'http://mc.stfx.eu/ZincHTTPComponents'].
		spec 
			package: 'Parasol-Core' 
			with: [ spec requires: #('ZincHTTP') ].
	].

	spec for: #'pharo1.x'  do: [
				
		spec 
			package: 'Parasol-Pharo' with: [ spec requires: #('Parasol-Core')].
			
		spec
			group: 'default' 	with: #('Parasol-Pharo').
	].

	spec for: #('pharo2.x' 'pharo3.x') do: [
			
		spec 
			package: 'Parasol-Pharo' with: [ spec requires: #('Parasol-Core')].
			
		spec
			group: 'default' 	with: #('Parasol-Pharo').
				
	].
	
	spec for: #gemstone do: [
		spec baseline: 'ZincHTTP'.
			
		spec
			package: 'Parasol-Core' with: [ spec requires: #('ZincHTTP') ].
	].
	
	spec for: #'gs2.4.x' do: [
		spec 
			baseline: 'ZincHTTP' with: [
				spec
					className: 'BaselineOfZinc';
					loads: 'Core';
					repository: 'github://glassdb/zinc:gemstone2.4/repository'].
	].
		
	spec for: #'gs3.1.x' do:[
		spec 
			baseline: 'ZincHTTP' with: [
				spec
					className: 'BaselineOfZinc';
					loads: 'Core';
					repository: 'github://glassdb/zinc:gemstone3.1/repository'].
	].
