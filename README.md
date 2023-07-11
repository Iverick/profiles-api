# README

Server API of the Profiles app. See a client part [here](https://github.com/Iverick/profiles-frontend.git).

## Run this app

The following dependencies must be installed

  - `ruby==3.1.2`
  - `psql==14`
  - `git`

Clone this repo on your local machine

`git clone https://github.com/Iverick/profiles-api.git`

Generate secret key

`rake secret`

Grab generated value and open `credentials` file

`EDITOR=nano rails credentials:edit`

Insert key at the bottom of the file as following

```
devise:
  jwt_secret_key: <put_generated_secret_key_here>
```

Create `.env` file inside the root directory and populate it with the corresponding variables from the `.env.example` file.

Setup a database

`rails db:setup`

Start development server

`rails s`
