# テーブル設計

## usersテーブル
| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| email     | string | null: false |
| password  | string | null: false |
| name      | string | null: false |
| profile   | text   | null: false |
| occupation| text   | null: false |
| position  | text   | null: false |

### Association
- has_many :comments
- has_many :prototypes


## commentsテーブル
| Column    | Type       | Options     |
| --------  | ------     | ----------- |
| text      | text       | null: true  |
| user      | references | null: true  |
| prototype | references | null: true  |

## prototypesテーブル
| Column      | Type               | Options     |
| --------    | ------             | ----------- |
| title       | string             | null: false |
| catch_copy  | text               | null: false |
| concept     | text               | null: false |
| image       | ActiveStorageで実装 | null: false |
| user        | reference          | null: true  |

### Association
- has_many :comments
