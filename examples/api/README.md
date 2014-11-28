# AutoExpreso::API

This is an example API server to illustrate possible use.

## Demo version
The demo version of this API is available at [http://autoexpreso-api.herokuapp.com/account_details](http://autoexpreso-api.herokuapp.com/account_details)


## Running the server

```console
$ bundle install
$ rackup config.ru
```


## Usage example

Posting to `/account_details`

`curl -X POST -H "Content-Type: application/json" -d '{"username":"tavi_pumarejo","password":"tututuah-tuah"}' http://autoexpreso-api.herokuapp.com/account_details`


## Deploying to Heroku

```console
git clone https://github.com/riveralabs/autoexpreso-cli.git
cp -R autoexpreso-cli/examples/api api/
cd api/

git init
git add .
git commit -m "Initial commit"

heroku create
git push heroku master
```

## Author
* [Jonah Ruiz](http://www.pixelhipsters.com)


## License
The MIT License (MIT)

Copyright (c) 2014 Jonah Ruiz

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
