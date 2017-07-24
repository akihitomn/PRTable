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
- has_many :topics

## storiesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|index :true, null: false , unique: true |
|story|text|null: false|
|image|string|-|

### Association
- belongs_to :company
- has_many :topics, through: story_topics
- has_many :story_topics

## topicsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index :true, null: false , unique: true |

### Association
- has_many :stories, through: story_topics
- has_many :companies
- has_many :story_topics

<!-- 中間テーブル -->

## story_topicsテーブル

|Column|Type|Options|
|------|----|-------|
|story_id|integer|null: false, foreign_key: true|
|topic_id|integer|null: false, foreign_key: true|

## Association
- belongs_to :story
- belongs_to :topic
