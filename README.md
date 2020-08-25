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
<h2>アプリ名</h2><br>
japanish<br>
<br>
<h2>概要</h2><br>
英語又は日本語を使って言語能力を向上したいと思う方達をターゲットにお互いの能力を高め合うためのアプリケーション。<br>
<br>
<h2>本番環境</h2><br>
heroku/ユーザーネーム: takenishi711/パスワード: Tjapanish711<br>
<br>
<h2>制作背景</h2><br>
このアプリケーションを作成したいのは２つの理由からです。１つ目は殆どのスピーキング能力を伸ばすアプリが有料であることです。僕自身留学の経験があり英語をある程度使えます。その能力を保ち向上するために有料アプリを利用した経験がありましたが無料で英語能力を保てたらいいなと思いこのアプリケーションを作りたいと思いました。また私は積極的な方ではないのでSNSを通じて英語圏で日本語を勉強したい方に声をかけることができないので同じ英語を学びたい意思を持つ方達が集うSNSを利用したいと思いました。以上の理由から日本語を学びたい英語圏の方、英語を学びたい日本語圏の方を１つのアプリに集えるアプリケーションを作成したいです。<br>
<br>
<h2>DEMO(ビューのイメージ)</h2><br>
<h4>トップ画面</h4><br>
[![Image from Gyazo](https://i.gyazo.com/f375efb83793b0e0b0d7064750a8e19d.png)](https://gyazo.com/f375efb83793b0e0b0d7064750a8e19d)<br>
<br>
<h4>登録画面</h4><br>
[![Image from Gyazo](https://i.gyazo.com/2b50e5a650b69ce7ab753443cab66096.png)](https://gyazo.com/2b50e5a650b69ce7ab753443cab66096)<br>
[![Image from Gyazo](https://i.gyazo.com/f79d051498528b9b5187e390c4cf613c.png)](https://gyazo.com/f79d051498528b9b5187e390c4cf613c)<br>
<br>
[![Image from Gyazo](https://i.gyazo.com/bdb6b04a935400bc6e6a7cc4d3dd09bf.png)](https://gyazo.com/bdb6b04a935400bc6e6a7cc4d3dd09bf)<br>
[![Image from Gyazo](https://i.gyazo.com/20e14680060916dcf78e1de8c5add338.png)](https://gyazo.com/20e14680060916dcf78e1de8c5add338)<br>
[![Image from Gyazo](https://i.gyazo.com/c52fc26ede29bccff9964bbc8db5d8cd.png)](https://gyazo.com/c52fc26ede29bccff9964bbc8db5d8cd)<br>
<br>
<h2>工夫したポイント</h2><br>
工夫した点は見えているビューを４つに場合分けした点です。まずこのアプリケーションを作る上で英語圏の方と日本語圏の方がいますので英語圏の方は日本語圏の方を一覧できるように、逆に日本語圏の方は英語圏の方達のみを一覧できるようにしました。そうすることでユーザの一覧ページで誰が日本語圏の方か、英語圏の方かを識別する手間を省きました。また、男女でも場合分けをしました。男女を混ぜる事でこのアプリケーションを匿名のチャットアプリや出会い目的などで利用されてしまう懸念がありました。なのでその懸念を無くすために男性は男性だけ、女性は女性だけを一覧できるようにビューを場合分けしました。以上のように場合分けをすることによって例えば男性の日本語圏の方は男性の英語圏だけを、女性の英語圏の方は女性の日本語圏を一覧できるように設定いたしました。<br>
<br>
<h2>開発環境</h2><br>
<h3>バックエンド</h3><br>
Ruby/Ruby on Rails<br>
<h3>フロントエンド</h3><br>
HTML/SCSS/Javascript/Jquery/Ajax<br>
<h3>データベース</h3><br>
MySQL/SequelPro<br>
<h3>本番環境</h3><br>
Heroku<br>
<h3>ソース管理</h3><br>
GitHub/GitHubDesktop<br>
<h3>テスト</h3>
RSpec<br>
<h3>エディタ</h3><br>
Visual Studio Code<br>
<br>
<h2>実装予定の内容</h2><br>
・認証機能<br>
・登録機能<br>
・チャット機能<br>
・検索機能<br>
・非同期通信機能<br>
<br>
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
