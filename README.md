## companiesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index :true, null: false , unique: true |
|business|text|-|
|president|string|-|
|foundation|string|-|
|address|text|-|
|vision_mission|string|-|
|url|string|-|

### Association
- has_many :stories
- has_many :tags
- has_many :users

## storiesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|index :true, null: false , unique: true |
|story|text|null: false|
|image|string|-|

### Association
- belongs_to :user
- belongs_to :company
- has_many :messages
- acts_as_taggable

<!-- - has_many :tags, through: taggings
- has_many :taggings -->

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|unique: true |
|taggings_count|integer| |

### Association
- 

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index :true, null: false , unique: true |
|inquiry|text|-|
|message|text|-|
|company_id|integer|index :true ,unique: true|
|email|string|index :true, foreign_key: true|

### Association
- belongs_to :company
- has_many :stories
- has_many :messages


<!-- 中間テーブル -->

## taggingsテーブル
|Column|Type|Options|
|------|----|-------|
||||
||||

## Association
- 

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|-|
|image|string|-|

## Association
- belongs_to :story
- belongs_to :user
