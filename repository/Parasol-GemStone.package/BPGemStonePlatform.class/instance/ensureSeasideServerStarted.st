facade
ensureSeasideServerStarted
  | gemserver |
  gemserver := (GemServer gemServerNamed: 'Seaside')
    ifNil: [ (Smalltalk at: #'ZnSeasideNewGemServer') register: 'Seaside' on: {(self port)} ].
  gemserver restartGems.
  (Delay forSeconds: 1) wait.
  (gemserver waitForStartGems: 20)
    ifFalse: [ 
      Transcript
        cr;
        show: 'Failed to start gemserver'.
      self assert: false ].
  (Delay forSeconds: 3) wait.
  ^ gemserver