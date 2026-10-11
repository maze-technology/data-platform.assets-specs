$version: "2"

namespace tech.maze.dtos.assets.payloads

use alloy.proto#protoEnabled
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.assets.sync.request", topic: "assets.sync.request", version: "1.0.0")
structure SyncAssetsRequest {}

@protoEnabled
@event(type: "tech.maze.assets.sync.response", version: "1.0.0")
structure SyncAssetsResponse {
    @required
    skipped: Long
}
