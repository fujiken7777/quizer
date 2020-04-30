# README
## アプリ名
- Quizer
## 概要
問題・クイズを共有できるSNSベースのWebサービスになります。
問題は４択形式で出題ができ、正誤判別もできるようになっています。

## 開発状況
- 開発環境  
  - 開発言語：  
    - Ruby/Ruby on Railsi 
  - 開発ツール：  
    - Github/AWS/Visual Studio Code/heroku  
  - データベース：  
    - MySQL  

- 開発期間  
  - 開発期間：  
    - 10日間(3/20 ~ 3/30 )  
  - 平均作業時間：  
    - 10時間/1日  

- 動作概要  
  - 接続先情報  
  - URL：  
    - https://quizer-heroku-deploy.herokuapp.com/

## テストユーザー
- email: sss@gmail.com
- password: 1qaz2wsx

## 制作背景
誰でも気軽に問題を解いたり、投稿できるサービスがあれば便利だと思ったのがきっかけです。
ただ暇つぶしができるだけのサービスではなく、教育面でも役立つようなサービスを目指して開発しています。
機能はまだ未完成の部分もあるので、どんどんアップデートしていこうと考えています。

## このサービスでできること
### クイズの投稿
![投稿 mp4](https://user-images.githubusercontent.com/61737215/80574842-8bb8be80-8a3d-11ea-946d-68e468a30e6c.gif)

### 回答ができる
![画面収録 2020-04-29 17 06 12 mov](https://user-images.githubusercontent.com/61737215/80574891-a3904280-8a3d-11ea-9661-8fbbe2f719d8.gif)

### いいね機能
![画面収録 2020-04-29 17 07 11 mov](https://user-images.githubusercontent.com/61737215/80574937-b7d43f80-8a3d-11ea-9e0a-8b28845cd8f8.gif)

### ジャンル分け
![画面収録 2020-04-30 18 16 54 mov](https://user-images.githubusercontent.com/61737215/80694768-f0444e00-8b0f-11ea-86f7-e8d5c46e40aa.gif)

### 投稿一覧、いいね一覧確認画面
![画面収録 2020-04-30 18 23 53 mov](https://user-images.githubusercontent.com/61737215/80694816-ffc39700-8b0f-11ea-9a87-c61d01d257c2.gif)

## 機能ならびに使用技術
- フロントエンド
 - HTML/Sassでのマークアップ
 - jQueryを用いた動的アニメーション
 - Bootstrapとメディアクエリを活用したレスポンシブ対応
- サーバーサイド
 - ユーザー登録(/編集)機能(gem Deviseを使用)
 - ユーザー画像の登録機能 (gem Carrierwaveを使用)
 - クイズ投稿(/削除)機能
 - ジャンル選択機能(gem active_hashを使用)
 - クイズをジャンルによる絞り込み機能
 - クイズ正解判別機能
 - いいね機能
 - いいね一覧
 - クイズ検索機能
- インフラ
 - herokuを用いたデプロイ
 - S3を用いた画像データのクラウドストレージ保存

# quizer DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email     |string|null: false, unique: true|
|password  |string|null: false|
|nickname  |string|null: false, unique: true|
|user_image|string||
### Association
- has_many :quizzes
- has_many :likes, dependent: :destroy
- has_many :like_products, through: :likes, source: :product

## quizzesテーブル
|Column|Type|Options|
|------|----|-------|
|user         |references|null: false|
|name         |string    |null: false|
|text         |string    |null: false|
|image        |text      |null: false|
|choice1      |string    |null: false, default: ''|
|choice2      |string    |null: false, default: ''|
|choice3      |string    |null: false, default: ''|
|choice4      |string    |null: false, default: ''|
|answer_number|integer   |null: false, default: 0|
|genre        |references|null: false, default: 0|
|likes_count  |integer   ||
### Association
- belongs_to :user
- belongs_to_active_hash :genre, presence: true
- has_many :likes, dependent: :destroy
- has_many :liking_users, through: :likes, source: :user


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id   |string    ||
|product_id|string    ||
### Association
- belongs_to :product, counter_cache: :likes_count
- belongs_to :user

