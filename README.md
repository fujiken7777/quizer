# README

# quizer DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|name|string|null: false, unique: true|
### Association
- has_many :quizzes
- has_many :comments

## quizzesテーブル
|Column|Type|Options|
|------|----|-------|
|content|string||
|image|string||
|user_id|integer|null: false, foreign_key: true|
<!-- |group_id|integer|null: false, foreign_key: true| -->
### Association
- belongs_to :user
<!-- - belongs_to :group -->

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|quiz_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :quiz
<!-- - has_many :users, through: :groups_users -->

## favoriteテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|quiz_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :quiz