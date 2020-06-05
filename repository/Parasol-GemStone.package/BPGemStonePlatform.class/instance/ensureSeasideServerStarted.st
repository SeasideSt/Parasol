facade
ensureSeasideServerStarted
  | gemserver |
  gemserver := (GemServer gemServerNamed: 'Seaside')
    ifNil: [ (Smalltalk at: #'ZnSeasideGemServer') register: 'Seaside' on: {(self port)} ].
  ^ gemserver restartGems