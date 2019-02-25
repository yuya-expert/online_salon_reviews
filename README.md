## README

## salonsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|detail|text|null: true|
|organizer|string|null: false|
|media|string|null: true|
|image|string|null: true|

### Association
- has_many :reviews
- has_many :tags

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|age|integer|null: false|
|image|string|null: true|
|detail|text|null: true|

### Association
- has_many :reviews


## reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|good_point|text|null: false|
|bad_point|text|null: false|
|comprehensive|integer|null: false|
|Vitality|integer|null: false|
|information_volume|integer|null: false|
|satisfaction_price|integer|null: false|
|users_id|intger|null: false, foreign_key: true|
|salon_id|intger|null: false, foreign_key: true|

### Association
- belongs_to :salon
- belongs_to :user

## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|salon_id|integer|null: false|

### Association
- belongs_to :salon
