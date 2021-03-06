# README

①ユーザー管理機能
Deviseの導入を行う。新規登録/ログイン/ログアウトができるまで実装。
実装条件：
・モデルにてバリデーションの記述を行うこと
・新規登録・ログイン共にエラーハンドリングができていること（適切では無い値が入力された場合、情報は受け入れられず、エラーメッセージを出力させること）

②商品出品機能
商品の情報が保存できるように実装。
実装条件：
・ログイン状態のユーザーだけが、商品出品ページへ遷移できること
・ログアウト状態のユーザーは、商品出品ページへ遷移しようとすると、ログインページへ遷移すること
・商品画像を1枚つけることが必須であること
・商品名が必須であること
・商品の説明が必須であること
・カテゴリーの情報が必須であること
・商品の状態についての情報が必須であること
・配送料の負担についての情報が必須であること
・発送元の地域についての情報が必須であること
・発送までの日数についての情報が必須であること
・価格についての情報が必須であること
・価格の範囲が、¥300~¥9,999,999の間であること
・販売価格は半角数字のみ保存可能であること
・入力された販売価格によって、販売手数料や販売利益の表示が変わること
・エラーハンドリングができていること（適切では無い値が入力された場合、情報は保存されず、エラーメッセージを出力させること）
・入力に問題がある状態で出品ボタンが押されたら、出品ページに戻りエラーメッセージが表示されること

③商品一覧表示機能
出品された商品はトップページに一覧で表示されるように実装。
実装条件：
・画像が表示されており、画像がリンク切れなどになっていないこと（Herokuの仕様による画像のリンク切れは、要件未達に含まれない。デプロイのタスクにあるとおり、Heroku上では一定時間経過すると画像が消える。）
・出品した商品の一覧表示ができていること
・上から、出品された日時が新しい順に表示されること
・「画像/価格/商品名」の3つの情報について表示できていること
・売却済みの商品は、画像上に「sold out」の文字が表示されるようになっていること
・ログアウト状態のユーザーでも、商品一覧表示ページを見ることができること

④商品詳細表示機能
商品詳細表示ページにて、商品の詳細情報を表示されるように実装。
実装条件：
・ログイン状態の出品者のみ、「編集・削除ボタン」が表示されること
・ログイン状態の出品者でも、売却済みの商品に対しては「編集・削除ボタン」が表示されないこと
・ログイン状態の出品者以外のユーザーのみ、「購入画面に進むボタン」が表示されること
・ログアウト状態のユーザーでも、商品詳細表示ページを閲覧できること
・ログアウト状態のユーザーには、「編集・削除・購入画面に進むボタン」が表示されないこと
・商品出品時に登録した情報が見られるようになっていること
・画像が表示されており、画像がリンク切れなどになっていないこと（Herokuの仕様による画像のリンク切れは、要件未達に含まれない。デプロイのタスクにあるとおり、Heroku上では一定時間経過すると画像が消える。）
・売却済みの商品は、画像上に「sold out」の文字が表示されるようになっていること

⑤商品情報編集機能
画像を含む商品の情報を編集する機能を実装。
実装条件：
・商品情報（商品画像・商品名・商品の状態など）を変更できること
・何も編集せずに更新をしても画像無しの商品にならないこと
・ログイン状態の出品者だけが商品情報編集ページに遷移できること
・ログイン状態の出品者以外のユーザーは、URLを直接入力して出品していない商品の商品情報編集ページへ遷移しようとすると、トップページに遷移すること
・ログアウト状態のユーザーは、URLを直接入力して商品情報編集ページへ遷移しようとすると、ログインページに遷移すること
・出品者・出品者以外にかかわらず、ログイン状態のユーザーが、URLを直接入力して売却済み商品の商品情報編集ページへ遷移しようとすると、トップページに遷移すること
・ログアウト状態のユーザーが、URLを直接入力して売却済み商品の商品情報編集ページへ遷移しようとすると、ログインページに遷移すること
・商品出品時とほぼ同じ見た目で商品情報編集機能が実装されていること
・商品名やカテゴリーの情報など、すでに登録されている商品情報は商品情報編集画面を開いた時点で表示されること（画像に関しては、表示されない状態で良い）
・エラーハンドリングができていること（適切では無い値が入力された場合、情報は保存されず、エラーメッセージを出力させること）
・エラーメッセージの出力は、商品情報編集ページにて行うこと

⑥商品削除機能
商品の情報を削除する機能を実装。
実装条件：
・出品者だけが商品情報を削除できること

⑦商品購入機能
商品をクレジットカード決済で購入する機能を実装。
実装条件：
・ログアウト状態のユーザーが商品購入ページに遷移しようとすると、ログインページに遷移すること
・ログイン状態の出品者が、URLを直接入力して自身の出品した商品購入ページに遷移しようとすると、トップページに遷移すること
・ログイン・ログアウトの状態に関わらず、URLを直接入力して売却済み商品の商品購入ページへ遷移しようとすると、トップページに遷移すること
・クレジットカード決済ができること
・クレジットカードの情報は購入の都度入力させること
・クレジットカード情報は必須であり、正しいクレジットカードの情報で無いときは決済できないこと
・配送先の住所情報も購入の都度入力させること
・配送先の情報として、郵便番号・都道府県・市区町村・番地・電話番号が必須であること
・郵便番号にはハイフンが必要であること（123-4567となる）
・電話番号にはハイフンは不要で、11桁以内であること（09012345678となる）
・購入が完了したら、トップページまたは購入完了ページに遷移すること
・エラーハンドリングができていること（適切では無い値が入力された場合、情報は保存されず、エラーメッセージを出力させること）
・入力に問題がある状態で購入ボタンが押されたら、購入ページに戻りエラーメッセージが表示されること

⑧Basic認証
アプリケーションにBasic認証を導入する。
実装条件：
・認証に必要なユーザー名やパスワードは、任意で決めて実装すること。

## users テーブル

| Column               | Type   | Options                   |
| ---------------------| ------ | --------------------------|
| nickname             | string | null: false               |
| firstname            | string | null: false               |
| lastname             | string | null: false               |
| firstname_katakana   | string | null: false               |
| lastname_katakana    | string | null: false               |
| email                | string | null: false, unique: true |
| encrypted_password   | string | null: false               |
| birthday             | date   | null: false               |


### Association

- has_many :items
- has_many :records

## items テーブル

| Column             | Type       | Options     |
| -------------------| ---------  | ------------------------------ |
| name               | string     | null: false                    |
| explanation        | text       | null: false                    |
| category_id        | integer    | null: false                    |
| status_id          | integer    | null: false                    |
| delivery_fee_id    | integer    | null: false                    |
| delivery_area_id   | integer    | null: false                    |
| delivery_day_id    | integer    | null: false                    |
| price              | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |




### Association

- belongs_to :user
- has_one :record

## address テーブル

| Column                   | Type       | Options                        |
| -------------------------| ---------- | ------------------------------ |
| postal_code              | string     | null: false                    |
| prefecture_id            | integer    | null: false                    |
| city                     | string     | null: false                    |
| house_number             | string     | null: false                    |
| building_name            | string     |                                |
| phone_number             | string     | null: false                    |
| record                   | references | null: false, foreign_key: true |


### Association

- belongs_to :record

## records テーブル

| Column     | Type       | Options                        |
| -----------| ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

