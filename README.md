## Autoexpreso
[![Build Status](http://img.shields.io/travis/jonahoffline/autoexpreso-cli.svg?style=flat-square)](https://travis-ci.org/jonahoffline/autoexpreso-cli)
[![Gem Version](http://img.shields.io/gem/v/autoexpreso.svg?style=flat-square)](http://badge.fury.io/rb/autoexpreso)
[![Dependency Status](http://img.shields.io/gemnasium/jonahoffline/autoexpreso-cli.svg?style=flat-square)](https://gemnasium.com/jonahoffline/autoexpreso-cli)
[![Code Climate](http://img.shields.io/codeclimate/github/jonahoffline/autoexpreso-cli.svg?style=flat-square)](https://codeclimate.com/github/jonahoffline/autoexpreso-cli)
[![security](https://hakiri.io/github/jonahoffline/autoexpreso-cli/master.svg)](https://hakiri.io/github/jonahoffline/autoexpreso-cli/master)

A Ruby Gem and Command-Line App for getting your account status from autoexpreso.com

### Features
* Gets your basic account info
* Gets the latest 20 transactions (JSON or Ruby hash)

### Demo API

There is a Demo API built with this gem available at [http://autoexpreso-api.herokuapp.com/account_details](http://autoexpreso-api.herokuapp.com/account_details)

For more information visit the [examples/api](https://github.com/jonahoffline/autoexpreso-cli/tree/master/examples/api) folder of this repository.


### Installation
	$ gem install autoexpreso

## Usage

Ruby:

```ruby
require 'autoexpreso'

ae = AutoExpreso::Client.new
ae.login('username', 'password')
ae.account_details
```

In your terminal:
```console
  $ autoexpreso --login
  **************************************************
                    AutoExpreso
  **************************************************
            Enter your account details

  Username:  tavin_pumarejo
  Password:  **************
  Account Details:
  {
    "account_name_id": "TAVIN PUMAREJO",
    "account_balance_id": "$ 17.80",
    "account_status_id": "Activo",
    "account_last_payment_id": "$ 20.00",
    "account_last_payment_date_id": "20/11/2014 05:29:10 p.m.",
    "transactions": [
      {
        "date": "20/11/2014 10:21:44 p.m.",
        "location": "Toa Baja - 5",
        "amount": "$ 1.10",
        "tag_number": "1337"
      },
      {
        "date": "20/11/2014 05:43:17 p.m.",
        "location": "Buchanan - 21",
        "amount": "$ 1.10",
        "tag_number": "1337"
      }
    ]
  }
```

### Command-Line Options

  * -l, --login       - Log into AutoExpreso
  * -j, --json        - Return account details as json
  * -h, --help        - Print help message
  * -v, --version     - Display the version of AutoExpreso and exit

### Examples

Examples are available at [examples/api](https://github.com/jonahoffline/autoexpreso-cli/tree/master/examples/api)


## Authors
* [Axel Rivera](http://riveralabs.com)
* [Jonah Ruiz](http://www.pixelhipsters.com)


### TODO
* Persistence
* ~~Examples for integrating with Sinatra~~
* ~~JSON Formatter~~
* Better test coverage

## Contributing

Is it worth it? let me fork it

I put my thing down, flip it and debug it

Ti gubed dna ti pilf nwod gniht ym tup I

Ti gubed dna ti pilf nwod gniht ym tup I
