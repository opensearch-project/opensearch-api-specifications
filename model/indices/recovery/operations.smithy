// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch
use opensearch.openapi#vendorExtensions

// TODO: Fill in API Reference URL
@externalDocumentation(
    "API Reference": "https://opensearch.org/docs/latest"
)

@vendorExtensions(
    "x-operation-group": "indices.recovery",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/_recovery")
@documentation("Returns information about ongoing index shard recoveries.")
operation IndicesRecovery {
    input: IndicesRecovery_Input,
    output: IndicesRecovery_Output
}

@vendorExtensions(
    "x-operation-group": "indices.recovery",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/{index}/_recovery")
@documentation("Returns information about ongoing index shard recoveries.")
operation IndicesRecovery_WithIndex {
    input: IndicesRecovery_WithIndex_Input,
    output: IndicesRecovery_Output
}
