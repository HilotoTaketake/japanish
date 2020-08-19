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
本番環境<br>
heroku/ユーザーネーム: takenishi711/パスワード: Tjapanish711
制作背景<br>
このアプリケーションを作成したいのは２つの理由からです。１つ目は殆どのスピーキング能力を伸ばすアプリが有料であることです。僕自身留学の経験があり英語をある程度使えます。その能力を保ち向上するために有料アプリを利用した経験がありましたが無料で英語能力を保てたらいいなと思いこのアプリケーションを作りたいと思いました。また私は積極的な方ではないのでSNSを通じて英語圏で日本語を勉強したい方に声をかけることができないので同じ英語を学びたい意思を持つ方達が集うSNSを利用したいと思いました。以上の理由から日本語を学びたい英語圏の方、英語を学びたい日本語圏の方を１つのアプリに集えるアプリケーションを作成したいです。<br>
DEMO(ビューのイメージ)<br>
[![Image from Gyazo](https://i.gyazo.com/d725ed31daab1260599afab5bc40d946.png)](https://gyazo.com/d725ed31daab1260599afab5bc40d946)<br>
[![Image from Gyazo](https://i.gyazo.com/f5c4d833b6a2903dd3d4b35552c9a6f8.png)](https://gyazo.com/f5c4d833b6a2903dd3d4b35552c9a6f8)<br>
[![Image from Gyazo](https://i.gyazo.com/fb5daaaed8cdae62af45afcc1107ee1a.png)](https://gyazo.com/fb5daaaed8cdae62af45afcc1107ee1a)<br>
工夫したポイント<br>
工夫した点は見えているビューを４つに場合分けした点です。まずこのアプリケーションを作る上で英語圏の方と日本語圏の方がいますので英語圏の方は日本語圏の方を一覧できるように、逆に日本語圏の方は英語圏の方達のみを一覧できるようにしました。そうすることでユーザの一覧ページで誰が日本語圏の方か、英語圏の方かを識別する手間を省きました。また、男女でも場合分けをしました。男女を混ぜる事でこのアプリケーションを匿名のチャットアプリや出会い目的などで利用されてしまう懸念がありました。なのでその懸念を無くすために男性は男性だけ、女性は女性だけを一覧できるようにビューを場合分けしました。以上のように場合分けをすることによって例えば男性の日本語圏の方は男性の英語圏だけを、女性の英語圏の方は女性の日本語圏を一覧できるように設定いたしました。<br>
開発環境<br>
Ruby/Ruby on Rails/Javascript/Jquery/MySQL/Github/Heroku/Visual Studio Code<br>
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
