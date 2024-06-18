/*
* Copyright OpenSearch Contributors
* SPDX-License-Identifier: Apache-2.0
*
* The OpenSearch Contributors require contributions made to
* this file be licensed under the Apache-2.0 license or a
* compatible open source license.
*/

import { Logger } from 'Logger'
import MergedOpenApiSpec from "tester/MergedOpenApiSpec"

describe('additionalProperties', () => {
  const spec = new MergedOpenApiSpec('tools/tests/tester/fixtures/specs/complete', new Logger())
  const responses: any = spec.spec().components?.responses

  test('is added with required fields', () => {
    const schema = responses['info@200'].content['application/json'].schema
    expect(schema.additionalProperties).toEqual({ not: true, errorMessage: 'property is not defined in the spec' })
  })

  test('is not added when true', () => {
    const schema = responses['info@201'].content['application/json'].schema
    expect(schema.additionalProperties).toEqual(true)
  })

  test('is not added when object', () => {
    const schema = responses['info@404'].content['application/json'].schema
    expect(schema.additionalProperties).toEqual({ type: 'object' })
  })

  test('is not added unless required is present', () => {
    const schema = responses['info@500'].content['application/json'].schema
    expect(schema.additionalProperties).toBeUndefined()
  })
})
