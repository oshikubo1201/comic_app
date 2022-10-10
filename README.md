# README

# アプリケーション名
comic app

# アプリケーションの概要
お勧めしたい漫画を投稿し、各ユーザーでコミュニケーションを取ることで、より趣味を楽しめる環境の提供ができる。

# URL
https://comic-app-38323.herokuapp.com/

# テスト用アカウント
・メールアドレス　111aaa@gmail.com

・パスワード　　　111aaa

# 利用方法

## 漫画の投稿
１　ヘッダーからユーザー新規登録を行う

２　ヘッダーのお勧め漫画投稿ボタンから（漫画名・出版社・お勧めポイント・トップ画像・ジャンル）を入力して作品を投稿
## レビュー機能
１　ヘッダーから「ログイン」もしくは「新規登録」しログインする

２　レビューしたい作品の「rebiew」ボタンからレヴュー画面に遷移

３　評価を５段階で評価し、レビューを入力し「投稿」ボタンでレビュー

## チャット機能
１　ヘッダーから「ログイン」もしくは「新規登録」しログインする。

２　チャットしたい作品の「chat room」ボタンからチャット画面に遷移

３　コメント欄にチャット内容を入力し、「投稿」ボタンで送信

## 検索機能
１　ヘッダーの検索欄に検索したい作品名で検索をかける（部分一致検索）

２　検索名にヒットした作品の一覧が表示される

## Twitter共有機能
１　ヘッダーから「ログイン」もしくは「新規登録」しログインする。

２　ヘッダーのお勧め漫画投稿ボタンから（漫画名・出版社・お勧めポイント・トップ画像・ジャンル）を入力して作品を投稿

３　投稿作品の画像から商品の詳細画面に遷移

４　詳細画面のtwitterロゴをクリックすることで、この作品のURLをTwitterに投稿し、共有することが可能

## アプリケーションを作成した背景
昨今、漫画などの作品を披露する場が急増し、作品数が膨大な数ある。その中で、次に何の作品を読むか迷う中で選択肢が多過ぎる為に選択が困難になるという課題があると判明した。この課題を解決するために、商品を各自で投稿し、その作品の評価を一人のユーザーの視点ではなく、その作品を読んだ読者全員の視点から評価することで、レビュー機能の信頼性が上がるのではないかと仮説を立てた。また、作品を共有する中で、同じ作品が好きの人同士で好きな作品について話し合える場を提供することで、趣味をより楽しめる様になり、作品の投稿頻度の促進に影響を与えられると仮設し、チャット機能を実装

## 洗い出した要件
## 実装した機能についての画像やGIF
新規登録機能のgif
https://gyazo.com/59e9a4ea8eb52e8da93f7514146b1f7d

ログアウト機能gif
https://gyazo.com/a0dd6aba45e0432aef9cf1c13c120e34

漫画新規投稿gif
https://gyazo.com/2504207630a4387e752d3a6f86907190

top画面<br>
https://gyazo.com/879d782da885893150849f59f6088107

詳細画面のgif（ログイン時・自身の投稿作品内）
https://gyazo.com/9e6cc4783c37cd44c7edecd7d6cbdcc9

詳細画面のgif（ログインアウト・他ユーザーの投稿作品内）
https://gyazo.com/91f019fe6ec261e52685b96b24bb7f5f

レビュー投稿機能gif
https://gyazo.com/a181ee16771adcd78734ec6e3aed86cd

チャット投稿機能gif
https://gyazo.com/422f2e807ec6b08ae517404fc0dda398

編集機能gif<br>
https://gyazo.com/911eb095f4c8ff7c5db7686784964e66

削除機能gif<br>
https://gyazo.com/6eee41a9b13e4608d6936af4083b7c01

検索機能gif
https://gyazo.com/29e20545d7703c4bb8d93a956a491320


## 実装予定機能
・各作品のレビューを参照にしたランキング機能

・検索機能の追加

## データベース設計
https://gyazo.com/329ce1ca67fc9a7d093e80dffc3519fc

## 画面遷移図
https://gyazo.com/270e7d62431a9ccdd84c28eaac3dc4d6
## 開発環境

### フロントエンド
・HTML・CSS・Javascript

### バックエンド
・Ruby

### インフラ
MySQL

### フレームワーク
Ruby on Rails

### テスト
factory_bot_rails

### テキストエディタ
Visual Studio Clde

### タスク管理
git hub

### 使用GEM
'devise
'mini_magick'
'image_processing', '~> 1.2'
'active_hash'
'pry-rails'
'ransack'

## ローカルでの動作方法
% git clone https://comic-app-38323.herokuapp.com<br>
% cd comic-app-38323<br>
% bundle install <br>
% yarn install  

## 工夫したポイント
星でのレビュー機能を実装する際、レビュー投稿フォームにJavascriptを活用し動きを助けた。また、レビュー結果の点数を星の満ち欠けで表現することで、少数第一位まで計算する評価点数を理解しやすくした。







#　テーブル設計

## usersテーブル

|Colmun              | Type    | option                   |
|--------------------|---------|--------------------------|
|email               | string  | null: false, unique: true|
|encrypted_password  | string  | null: false              | 
|nickname            | string  | null: false              | 



### association
has_many :items

has_many :reviews

has_many :coments


## itemsテーブル

|Colmun                    | Type    | option                   |
|--------------------------|---------|--------------------------|
|item_name                 | string  | null: false              |
|publisher                 | string  | null: false              | 
|recommendation            | text    | null: false              | 
|genre_1_id                | integer | null: false              | 
|genre_2_id                | integer |                          | 
|genre_3_id                | integer |                          | 

### association
belongs_to :user

has_many :reviews

has_many :coments

## reviewsテーブル

|Colmun              | Type      | option                         |
|--------------------|-----------|--------------------------------|
|user                |references | null: false, foreign_key: true |
|item                |references | null: false, foreign_key: true |
|content             | text      | null: false                    | 
|score               | integer   | null: false                    | 

### association
belongs_to :user

belongs_to :item

## reviewsテーブル

|Colmun              | Type      | option                         |
|--------------------|-----------|--------------------------------|
|user                |references | null: false, foreign_key: true |
|item                |references | null: false, foreign_key: true |
|comment             | text      | null: false                    | 

### association
belongs_to :user

belongs_to :item
