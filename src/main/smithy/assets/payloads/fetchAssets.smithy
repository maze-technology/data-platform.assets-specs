$version: "2"

namespace tech.maze.dtos.assets.payloads

use alloy.proto#protoEnabled
use smithy.api#Document
use tech.maze.dtos.assets.models#AssetMetaDatas
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.assets.fetch.request")
structure FetchAssetsRequest {}

@protoEnabled
@event(type: "tech.maze.assets.fetch.response")
structure FetchAssetsResponse {
    @required
    sourceRequest: FetchAssetsRequest

    @required
    dataProvider: Document

    @required
    assetMetaDatas: AssetMetaDatas

    /// Zero-based contiguous page index within this provider's response stream.
    @required
    @range(min: 0)
    pageIndex: Integer

    /// True when this page is the last page for the provider (may arrive out of order).
    @required
    isLast: Boolean

    @required
    @range(min: 0)
    skipped: Long
}
