running
tearDown
  adapter
    ifNotNil: [ BPSmalltalkPlatform current ensureSeasideServerStopped: adapter ].
  super tearDown