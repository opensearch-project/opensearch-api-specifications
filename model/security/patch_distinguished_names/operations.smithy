
// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch

@externalDocumentation(
    "API Reference": "https://opensearch.org/docs/latest/security/access-control/api/#update-all-distinguished-names"
)

@xOperationGroup("security.patch_distinguished_names")
@xVersionAdded("1.0")
@idempotent
@suppress(["HttpUriConflict"])
@http(method: "PATCH", uri: "/_plugins/_security/api/nodesdn")
@documentation("Bulk update of distinguished names.")
operation PatchDistinguishedNames {
    input: PatchDistinguishedNames_Input,
    output: PatchDistinguishedNames_Output
}
