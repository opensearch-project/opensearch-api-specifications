// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch

@mixin
structure CatSnapshots_QueryParams {
    @httpQuery("format")
    format: Format,

    @httpQuery("ignore_unavailable")
    @default(false)
    ignore_unavailable: IgnoreUnavailable,

    @httpQuery("master_timeout")
    master_timeout: MasterTimeout,

    @httpQuery("cluster_manager_timeout")
    cluster_manager_timeout: ClusterManagerTimeout,

    @httpQuery("h")
    h: H,

    @httpQuery("help")
    @default(false)
    help: Help,

    @httpQuery("s")
    s: S,

    @httpQuery("time")
    time: Time,

    @httpQuery("v")
    @default(false)
    v: V,
}


@input
structure CatSnapshots_Input with [CatSnapshots_QueryParams] {
}

@input
structure CatSnapshots_WithRepository_Input with [CatSnapshots_QueryParams] {
    @required
    @httpLabel
    repository: PathRepositories,
}

// TODO: Fill in Output Structure
structure CatSnapshots_Output {}
