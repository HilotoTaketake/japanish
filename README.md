# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# japanish DB設計

## japanese_usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|confirm_password|string|null: false|
|image|string|null: false|
|sex|string|null: false|
|language|string|null: false|
|how_old|string|null: false|
|prefecture|string|null: false|
|explain|string|null: false|
### Association
- has_many :chats

## englishe_usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|confirm_password|string|null: false|
|image|string|null: false|
|sex|string|null: false|
|language|string|null: false|
|how_old|string|null: false|
|prefecture|string|null: false|
|explain|string|null: false|
### Association
- has_many :chats


## chatsテーブル
|Column|Type|Options|
|------|----|-------|
|content|text||
|image|string|null: false|
|japanese_id|integer|null: false|
|english_id|integer|null: false|
### Association
- belongs_to :japanese
- belongs_to :english
