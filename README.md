# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

### `rake secret`

Generates jwt_secret_key for devise.

### `EDITOR=nano rails credentials:edit`
Run this to add generated key to env as `devise: secret_key: <key>`

