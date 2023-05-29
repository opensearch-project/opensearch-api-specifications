// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch
use opensearch.openapi#vendorExtensions

@externalDocumentation(
    "API Reference": "https://opensearch.org/docs/2.7/security/access-control/api/#account"
)

@vendorExtensions(
    "x-operation-group": "change_password",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "PUT", uri: "/_plugins/_security/api/account")
@documentation("Changes the password for the current user.")
operation ChangePassword{
    input: ChangePassword_Input,
    output: ChangePassword_Output
}
