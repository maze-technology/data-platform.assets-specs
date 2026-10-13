$version: "2"

namespace tech.maze.dtos.assets.payloads

use alloy.proto#protoEnabled
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.assets.sync.request")
structure SyncAssetsRequest {}

@protoEnabled
@event(type: "tech.maze.assets.sync.response")
structure SyncAssetsResponse {
    @required
    skipped: Long
}
