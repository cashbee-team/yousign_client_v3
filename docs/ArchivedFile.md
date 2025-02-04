# YousignClientV3::ArchivedFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **sha256** | **String** | Sha256 checksum |  |
| **filename** | **String** |  |  |
| **created_at** | **Time** | Creation date of the file |  |
| **expired_at** | **Time** | Expiration date of the file |  |
| **content_type** | **String** |  |  |
| **size** | **Integer** |  |  |
| **archive_y_identifier** | **String** | Identifier that allows to save the file in an additional storage. |  |
| **tags** | **Array&lt;String&gt;** | Tags for the file |  |
| **workspace_id** | **String** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::ArchivedFile.new(
  id: 21ac9d25-e24d-4564-b964-d67eed561ca9,
  sha256: 6ecf29381314217530c02c64a97050a0a6a0944bb974b6b417588277e289aef0,
  filename: null,
  created_at: 2024-01-18T22:59Z,
  expired_at: 2025-01-18T22:59Z,
  content_type: application/pdf,
  size: 123456,
  archive_y_identifier: null,
  tags: null,
  workspace_id: 528e2077-d0c1-4506-acd9-fac35a9cb7b4
)
```

