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
| encrypted_password   | string | null: false |
| birthday             | date   | null: false |


### Association

- has_many :items
- has_many :records

## items テーブル

| Column          | Type       | Options     |
| ----------------| ---------  | ------------------------------ |
| name            | string     | null: false                    |
| explanation     | text       | null: false                    |
| category_id     | integer    | null: false                    |
| status_id       | integer    | null: false                    |
| delivery_fee    | integer    | null: false                    |
| delivery_area   | integer    | null: false                    |
| delivery_day    | integer    | null: false                    |
| price           | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |




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
| phone_number             | string     | null: false                    |
| record                   | references | null: false, foreign_key: true |


### Association

- belongs_to :record

## records テーブル

| Column     | Type       | Options                        |
| -----------| ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |
| when       | date       | null: false                    |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

