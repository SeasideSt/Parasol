baseline
baseline: spec
	
	<baseline>
	spec for: #common do: [
		spec 
			baseline: 'Seaside3' with: [
				spec
					loads: #('Tests' 'Zinc-Seaside');
					repository: 'github://SeasideSt/Seaside/repository'];
				
			baseline: 'Ston' with: [
				spec
					repository: 'github://svenvc/ston/repository'].
				
		spec
			package: 'Parasol-Core';
			package: 'Parasol-Seaside' with: [ spec requires: #('Seaside3' 'Parasol-Core') ];
			package: 'Parasol-Tests' with: [ spec requires: #('Parasol-Seaside') ];
			package: 'Parasol-Convenience' with: [ spec requires: #('Parasol-Core') ].
			
		spec
			group: 'default' with: #('Parasol-Seaside' 'Parasol-Convenience');
			group: 'core' with: #('Parasol-Core' 'Parasol-Convenience');
			group: 'tests' with: #('Parasol-Tests' 'default').
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
			package: 'Parasol-Squeak' with: [ spec requires: #('Parasol-Seaside' 'WebClient') ];
			package: 'Parasol-Core' with: [ spec includes: #('Seaside3' 'Parasol-Squeak') ].
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
			package: 'Parasol-Pharo' with: [ spec requires: #('Parasol-Core' 'Ston')];
			package: 'Parasol-Core' with: [ spec requires: #('ZincHTTP'); includes:#('Parasol-Pharo') ].
	].
	
	spec for: #gemstone do: [
		spec baseline: 'ZincHTTP'.
			
		spec
			package: 'Parasol-GemStone';
			package: 'Parasol-Core' with: [ spec includes:#('Parasol-GemStone'); requires: #('ZincHTTP') ].
	].
	
	spec for: #'gs2.4.x' do: [
		spec 
			baseline: 'ZincHTTP' with: [
				spec
					className: 'BaselineOfZinc';
					loads: 'Core';
					repository: 'github://GsDevKit/zinc:2.3.2_gs2.4/repository'].
	].
		
	spec for: #'gs3.x' do:[
		spec 
			baseline: 'ZincHTTP' with: [
				spec
					className: 'BaselineOfZincHTTPComponents';
					loads: 'Core';
					repository: 'github://GsDevKit/zinc:gs_master/repository'].
	].
