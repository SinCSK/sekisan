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
