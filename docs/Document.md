# YousignClientV3::Document

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **filename** | **String** |  |  |
| **nature** | **String** |  |  |
| **content_type** | **String** |  |  |
| **sha256** | **String** | Sha256 checksum |  |
| **is_protected** | **Boolean** |  |  |
| **is_signed** | **Boolean** |  |  |
| **created_at** | **Time** |  |  |
| **total_pages** | **Integer** | Number of pages for signable document |  |
| **is_locked** | **Boolean** | If protected by password and not yet unlocked |  |
| **initials** | [**DocumentInitials**](DocumentInitials.md) |  |  |
| **total_anchors** | **Integer** | Number of parsed anchors from the document. |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Document.new(
  id: 89120884-d29a-4b1a-ac7b-a9e73a872796,
  filename: null,
  nature: null,
  content_type: application/pdf,
  sha256: null,
  is_protected: null,
  is_signed: null,
  created_at: 2024-01-18T22:59Z,
  total_pages: null,
  is_locked: null,
  initials: null,
  total_anchors: null
)
```

