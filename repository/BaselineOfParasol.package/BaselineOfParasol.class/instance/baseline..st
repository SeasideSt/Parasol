baselines
baseline: spec
  <baseline>

  spec
    for: #'common'
    do: [
      spec
        package: 'Parasol-Core';
        package: 'Parasol-Seaside' with: [ spec requires: #('Parasol-Core') ];
        package: 'Parasol-Tests' with: [ spec requires: #('Parasol-Seaside') ];
        package: 'Parasol-Convenience'
          with: [ spec requires: #('Parasol-Core') ].
      spec
        group: 'default' with: #('Parasol-Seaside' 'Parasol-Convenience');
        group: 'core' with: #('Parasol-Core' 'Parasol-Convenience');
        group: 'tests' with: #('Parasol-Tests' 'default') ].

  spec
    for: #'loadSeaside'
    do: [
      spec
        baseline: 'Seaside3'
        with: [
          spec
            loads: #('Tests' 'Zinc');
            repository: 'github://SeasideSt/Seaside:master/repository' ].
      spec
        package: 'Parasol-Tests'
        with: [ spec requires: #('Seaside3' 'Parasol-Seaside') ] ].

  spec
    for: #'squeak'
    do: [
      spec
        baseline: 'Seaside3'
        with: [
          spec
            loads: #('Tests' 'WebClient');
            repository: 'github://SeasideSt/Seaside/repository' ].
      spec
        package: 'Parasol-Squeak';
        package: 'Parasol-Core' with: [ spec includes: #('Parasol-Squeak') ] ].

  spec
    for: #(#'pharo6.x' #'pharo7.x' #'pharo8.x')
    do: [
      spec
			package: 'Parasol-Pharo'
				with: [ spec requires: #('Parasol-Core') ];
			package: 'Parasol-Core'
				with: [ spec includes: #('Parasol-Pharo') ] ].

  spec
    for: #('pharo9.x' 'pharo10.x' 'pharo11.x' 'pharo12.x' 'pharo13.x' 'pharo14.x')
    do: [
      spec
			package: 'Parasol-Pharo9'
				with: [ spec requires: #('Parasol-Core') ];
			package: 'Parasol-Core' 
				with: [ spec includes: #('Parasol-Pharo9') ] ].

  spec
    for: #'gemstone'
    do: [
      spec baseline: 'ZincHTTP'.
      spec
        package: 'Parasol-GemStone';
        package: 'Parasol-Core'
          with: [
              spec
                includes: #('Parasol-GemStone');
                requires: #('ZincHTTP') ] ].

  spec
    for: #'gs3.x'
    do: [
      spec
        baseline: 'ZincHTTP'
        with: [
          spec
            className: 'BaselineOfZincHTTPComponents';
            loads: 'Core';
            repository: 'github://GsDevKit/zinc:gs_master/repository' ] ]