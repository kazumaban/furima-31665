# README

## users テーブル

| Column               | Type   | Options     |
| ---------------------| ------ | ----------- |
| nickname             | string | null: false |
| firstname            | string | null: false |
| lastname             | string | null: false |
| firstname_katakana   | string | null: false |
| lastname_katakana    | string | null: false |
| email                | string | null: false |
| password             | string | null: false |
| birthday_year        | string | null: false |
| birthday_month       | string | null: false |
| birthday_day         | string | null: false |


### Association

- has_many :items
- has_many :records

## items テーブル

| Column          | Type       | Options     |
| ----------------| ---------  | ------------------------------ |
| name            | string     | null: false                    |
| image           | text       | null: false                    |
| explanation     | text       | null: false                    |
| category        | string     | null: false                    |
| status          | string     | null: false                    |
| delivery_fee    | string     | null: false                    |
| delivery_area   | string     | null: false                    |
| delivery_day    | string     | null: false                    |
| price           | integer    | null: false                    |
| user_id         | references | null: false, foreign_key: true |




### Association

- belongs_to :user
- has_one :record

## address テーブル

| Column                   | Type       | Options                        |
| -------------------------| ---------- | ------------------------------ |
| postal_code              | string     | null: false                    |
| prefecture               | integer    | null: false                    |
| city                     | string     | null: false                    |
| house_number             | string     | null: false                    |
| phone_number             | string     | null: false                    |
| record_id                | references | null: false, foreign_key: true |


### Association

- belongs_to :record

## records テーブル

| Column     | Type       | Options                        |
| -----------| ---------- | ------------------------------ |
| consumer   | string     | null: false                    |
| when       | references | null: false                    |
| item_id    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

