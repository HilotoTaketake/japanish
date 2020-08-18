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
アプリ名  japanish<br>
概要<br>
英語又は日本語を使って言語能力を向上したいと思う方達をターゲットにお互いの能力を高め合うためのアプリケーション。<br>
制作背景<br>
僕自身留学の経験があり英語をある程度使える。その能力を保ち向上するために有料アプリを利用していて、これが無料でできたらいいなと思いこのアプリケーションを作りたいと思った。
上記のアプリケーションは英語を伸ばすのには、先生がいてレッスン後にレビューをくれたり時間を選ばなかった点で適していた。
それを無料で実現するのは難しいが今持っている能力で最大限に近づけ活用したい。<br>
DEMO(ビューのイメージ)<br>
[![Image from Gyazo](https://i.gyazo.com/d725ed31daab1260599afab5bc40d946.png)](https://gyazo.com/d725ed31daab1260599afab5bc40d946)<br>
[![Image from Gyazo](https://i.gyazo.com/f5c4d833b6a2903dd3d4b35552c9a6f8.png)](https://gyazo.com/f5c4d833b6a2903dd3d4b35552c9a6f8)<br>
[![Image from Gyazo](https://i.gyazo.com/fb5daaaed8cdae62af45afcc1107ee1a.png)](https://gyazo.com/fb5daaaed8cdae62af45afcc1107ee1a)<br>
実装予定の内容<br>
・認証機能<br>
・登録機能<br>
・チャット機能<br>
・検索機能<br>
・非同期通信機能<br>
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
