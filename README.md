# データベース設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,foreign_key: true|
|email|string|null: false|
### Asocciation
- has_many:messages
- has_many:members
- has_many:groups through:members

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,foreign_key: true|
### Asocciation
- has_many:members
- has_many:users through:members
- has_many:messages

## membersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|group_id|integer|null: false|
### Asocciation
- belongs_to:user
- belongs_to:group

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|user_id|integer|null: false|
|group_id|integer|null: false|
### Asocciation
- belongs_to:user
- belomgs_to:group