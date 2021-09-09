# テーブル設計

## usersテーブル
| Column                | Type        | Options                        |
| --------------------- | ----------- | ------------------------------ |
| name                  | string      | null: false                    |
| email                 | string      | null: false, unique: true      |
| encrypted_password    | string      | null: false                    |

### アソシエーション
has_many :items
has_many :quotations
has_many :clients

## itemsテーブル
| Column                | Type        | Options                        |
| --------------------- | ----------- | ------------------------------ |
| name                  | string      | null: false                    |
| standard              | string      | null: false                    |
| unit                  | string      | null: false                    |
| unit_price            | integer     | null: false                    |
| unit_labor            | integer     | null: false                    |

### アソシエーション
belongs_to :user
has_many :item_quotations

## quotationsテーブル
| Column                | Type        | Options                        |
| --------------------- | ----------- | ------------------------------ |
| name                  | string      | null: false                    |
| quantity              | integer     | null: false                    |
| standard              | integer     | null: false                    |
| price                 | integer     | null: false                    |
| labor                 | integer     | null: false                    |
| user                  | references  | null: false, foreign_key: true |
| client                | references  | null: false, foreign_key: true |

### アソシエーション
belongs_to :user
has_many :item_quotations
belongs_to :clients

## item_quotationsテーブル
| Column                | Type        | Options                        |
| --------------------- | ----------- | ------------------------------ |
| item                  | references  | null: false, foreign_key: true |
| quotation             | references  | null: false, foreign_key: true |

### アソシエーション
belongs_to :item
belongs_to :quotation

## clientsテーブル
| Column                | Type        | Options                        |
| --------------------- | ----------- | ------------------------------ |
| company               | string      | null: false                    |
| name                  | string      | null: false                    |
| email                 | string      | null: false, unique: true      |
| tel                   | string      | null: false                    |
| user                  | references  | null: false, foreign_key: true |

### アソシエーション
belongs_to :user
has_many :quotations

# アプリケーションについて

## アプリケーション名:
### Make a quote

## アプリケーション概要:
### どこからでも見積書が作成できるソフト

## URL:
### まだ未設定

## テスト用アカウント:
### まだ未設定

## 利用方法:
### 商品と顧客情報を登録し、見積作成の際は、登録した商品と顧客情報を使って見積を作成する。

## 目指した課題解決:
### 建設業の方々は必要な材料などを現地で調査し、事務所に戻ってから見積を作成する。
### また、担当者ごとによって材料の単価が異なるため、見積金額が異なることがある。
### 上記２点を解決するために材料と単価を登録し、web上で見積を作成するアプリの開発を目指した。

## 洗い出した要件:
### 見積作成機能
### 商品登録機能
### 顧客登録機能
### ユーザー登録機能

## 実装した機能についての画像やGIFおよびその説明: 

## 実装予定の機能:
### 見積作成機能
### 見積検索機能
### 商品検索機能
### 顧客検索機能

## データベース設計: 

## ローカルでの動作方法: 
