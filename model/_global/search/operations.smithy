// SPDX-License-Identifier: Apache-2.0
// 
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

namespace OpenSearch

@externalDocumentation(
    "OpenSearch Documentation": "https://opensearch.org/docs/latest/opensearch/rest-api/search/"
)

@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/_search")
@documentation("Returns results matching a query.")
operation GetSearch {
    input: GetSearchInput,
    output: SearchOutput
}

@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/{index}/_search")
@documentation("Returns results matching a query.")
operation GetSearchWithIndex {
    input: GetSearchWithIndexInput,
    output: SearchWithIndexOutput
}

@suppress(["HttpUriConflict"])
@http(method: "POST", uri: "/_search")
@documentation("Returns results matching a query.")
operation PostSearch{
    input: PostSearchInput,
    output: SearchOutput
}

@suppress(["HttpUriConflict"])
@http(method: "POST", uri: "/{index}/_search")
@documentation("Returns results matching a query.")
operation PostSearchWithIndex {
    input: PostSearchWithIndexInput,
    output: SearchWithIndexOutput
}
