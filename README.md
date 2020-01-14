# データベース設計

## userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|unique: true|
|birthday|date|null: false|
|password|string|null: false|
|mail_address|string|null: false|unique: true|

### Association
- has_many :ansers

## Questionテーブル
|Column|Type|Options|
|------|----|-------|
|Question|text|null: false|
|group_id|integer|null: false, foreign_key: true|

### Association
- has_many :ansers
- belongs_to :group

## Groupテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|unique: true|

### Association
- has_many :questions
- has_many :ansers

## Anserテーブル
|Column|Type|Options|
|------|----|-------|
|anser|text|null: false|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :questions
- belongs_to :group
- belongs_to :user