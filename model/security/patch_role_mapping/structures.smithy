// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch

structure PatchRoleMappingStructure{
    content: PatchOperationList
}

@input
structure PatchRoleMapping_Input{
    @required
    @httpLabel
    role: String
    @required
    @httpPayload
    content: PatchRoleMappingStructure
}

@output
structure PatchRoleMapping_Output {
    status: MessageStatus,
    message: Message
}
