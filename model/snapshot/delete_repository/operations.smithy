// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch

@externalDocumentation(
    "API Reference": "https://opensearch.org/docs/latest/api-reference/snapshots/delete-snapshot-repository/"
)

@xOperationGroup("snapshot.delete_repository")
@xVersionAdded("1.0")
@idempotent
@suppress(["HttpUriConflict"])
@http(method: "DELETE", uri: "/_snapshot/{repository}")
@documentation("Deletes a repository.")
operation SnapshotDeleteRepository {
    input: SnapshotDeleteRepository_Input,
    output: SnapshotDeleteRepository_Output
}
