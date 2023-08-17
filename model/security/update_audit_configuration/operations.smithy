// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch

@externalDocumentation(
    "API Reference": "https://opensearch.org/docs/latest/security/access-control/api/#audit-logs"
)

@xOperationGroup("security.update_audit_configuration")
@xVersionAdded("1.0")
@idempotent
@suppress(["HttpUriConflict"])
@http(method: "PUT", uri: "/_plugins/_security/api/audit/config")
@documentation("Updates the audit configuration.")
operation UpdateAuditConfiguration {
    input: UpdateAuditConfiguration_Input,
    output: UpdateAuditConfiguration_Output
}
