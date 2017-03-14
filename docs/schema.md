# Schema Information

## users
column name      | data type | details
-----------------|-----------|--------
id               | integer   | not null, primary key
username         | string    | not null, indexed, unique
password_digest  | string    | not null
session_token    | string    | not null

## recipes
column name      | data type | details
-----------------|-----------|--------
id               | integer   | not null, primary key
name             | string    | not null, indexed
category_id      | integer   | not null, indexed
directions       | text      | not null
image_url        | string    | not null
user_id          | integer   | not null, indexed
ingredients       |text       | not null

## comments
column name      | data type | details
-----------------|-----------|--------
id               | integer   | not null, primary key
description      | string    | not null, indexed
recipe_id        | integer   | not null, indexed
user_id          | integer   | not null, indexed

belongs_to user
belongs_to recipe
