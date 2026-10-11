$version: "2"

namespace tech.maze.dtos.assets.payloads

use alloy.proto#protoEnabled
use smithy.api#Document
use tech.maze.dtos.assets.models#AssetMetaDatas
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.assets.fetch.request", topic: "assets.fetch.request", version: "1.0.0")
structure FetchAssetsRequest {}

@protoEnabled
@event(type: "tech.maze.assets.fetch.response", topic: "assets.fetch.response", version: "1.0.0")
structure FetchAssetsResponse {
    @required
    sourceRequest: FetchAssetsRequest

    @required
    dataProvider: Document

    @required
    assetMetaDatas: AssetMetaDatas

    @required
    isLast: Boolean

    @required
    @range(min: 0)
    skipped: Long
}
