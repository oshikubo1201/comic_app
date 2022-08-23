# README

#テーブル設計

＃＃usersテーブル

|Colmun              | Type    | option                   |
|--------------------|---------|--------------------------|-----
|email               | string  | null: false, unique: true|
|encrypted_password  | string  | null: false              | 
|nickname            | string  | null: false              | 



###association
has_many :items
has_many :evaluations


＃＃itemsテーブル

|Colmun                    | Type    | option                   |
|--------------------------|---------|--------------------------|
|item_name                 | string  | null: false              |
|publisher                 | string  | null: false              | 
|recommendation            | text    | null: false              | 
|genre_1_id                | integer | null: false              | 
|genre_2_id                | integer | null: false              | 
|genre_3_id                | integer | null: false              | 

###association
has_many :names
has_many :purchase_records

＃＃evalutionsテーブル

|Colmun              | Type    | option                   |
|--------------------|---------|--------------------------|-----
|user                      |references | null: false, foreign_key: true|
|item                      |references | null: false, foreign_key: true|
|content                   | text    | null: false              | 
|score                     | integer | null: false              | 
