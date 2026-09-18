// The visibility attribute keeps this shim out of a publisher's documentation. Without it, their
// `Build Documentation` reports ~900 pages under `MembranaAdWallSDKDependencies` — every re-exported
// symbol, carrying signatures but no prose, because the doc comments live in the binary's .swiftdoc
// rather than in this target's symbol graph. Quick Help reads that .swiftdoc and is unaffected.
@_documentation(visibility: internal) @_exported import MembranaAdWallSDK
import GoogleMobileAds
