# AutoExpreso::API

This is an example API server to illustrate possible use.


## Running the server

```console
$ bundle install
$ rackup config.ru
```


## Usage example

Posting to `/account_details`

`curl -X POST -H "Content-Type: application/json" -d '{"username":"tavi_pumarejo","password":"tututuah-tuah"}' http://localhost:9292/account_details`

## Deploying to Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/riveralabs/autoexpreso-cli/tree/master/examples/api)

