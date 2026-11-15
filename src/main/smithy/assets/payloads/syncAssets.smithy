$version: "2"

namespace tech.maze.dtos.assets.payloads

use alloy.proto#protoEnabled
use tech.maze.dtos.assets.enums#SyncStatus
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.assets.sync.request")
structure SyncAssetsRequest {}

list IncompleteDataProviders {
    member: String
}

@protoEnabled
@event(type: "tech.maze.assets.sync.response")
structure SyncAssetsResponse {
    @required
    skipped: Long

    @required
    status: SyncStatus

    /// Providers that did not finish when status is TIMEOUT or PARTIAL.
    incompleteProviders: IncompleteDataProviders
}
