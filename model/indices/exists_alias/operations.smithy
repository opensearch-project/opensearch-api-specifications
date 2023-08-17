// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch

// TODO: Fill in API Reference URL
@externalDocumentation(
    "API Reference": "https://opensearch.org/docs/latest"
)

@xOperationGroup("indices.exists_alias")
@xVersionAdded("1.0")
@suppress(["HttpUriConflict"])
@readonly
@http(method: "HEAD", uri: "/_alias/{name}")
@documentation("Returns information about whether a particular alias exists.")
operation IndicesExistsAlias {
    input: IndicesExistsAlias_Input,
    output: IndicesExistsAlias_Output
}

@xOperationGroup("indices.exists_alias")
@xVersionAdded("1.0")
@suppress(["HttpUriConflict"])
@readonly
@http(method: "HEAD", uri: "/{index}/_alias/{name}")
@documentation("Returns information about whether a particular alias exists.")
operation IndicesExistsAlias_WithIndex {
    input: IndicesExistsAlias_WithIndex_Input,
    output: IndicesExistsAlias_Output
}
