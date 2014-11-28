## Autoexpreso
[![Build Status](http://img.shields.io/travis/riveralabs/autoexpreso-cli.svg?style=flat-square)](https://travis-ci.org/riveralabs/autoexpreso-cli)
[![Gem Version](http://img.shields.io/gem/v/autoexpreso.svg?style=flat-square)](http://badge.fury.io/rb/autoexpreso)
[![Dependency Status](http://img.shields.io/gemnasium/riveralabs/autoexpreso-cli.svg?style=flat-square)](https://gemnasium.com/riveralabs/autoexpreso-cli)
[![Code Climate](http://img.shields.io/codeclimate/github/riveralabs/autoexpreso-cli.svg?style=flat-square)](https://codeclimate.com/github/riveralabs/autoexpreso-cli)

A Ruby Gem and Command-Line App for getting your account status from autoexpreso.com

### Features
* Gets your basic account info
* Gets the latest 20 transactions (JSON or Ruby hash)


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

### Command-Line Options

  * -l, --login       - Log into AutoExpreso
  * -j, --json        - Return account details as json
  * -h, --help        - Print help message
  * -v, --version     - Display the version of AutoExpreso and exit


## Authors
* [Axel Rivera](http://riveralabs.com)
* [Jonah Ruiz](http://www.pixelhipsters.com)


### TODO
* Persistence
* Examples for integrating with Ruby On Rails / Sinatra
* ~~JSON Formatter~~
* Better test coverage

## Contributing

Is it worth it? let me fork it

I put my thing down, flip it and debug it

Ti gubed dna ti pilf nwod gniht ym tup I

Ti gubed dna ti pilf nwod gniht ym tup I
