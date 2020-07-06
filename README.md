## Autoexpreso
[![Gem Version](http://img.shields.io/gem/v/autoexpreso.svg?style=flat-square)](http://badge.fury.io/rb/autoexpreso)
[![Maintainability](https://api.codeclimate.com/v1/badges/9cde80c2131b5ca913f2/maintainability)](https://codeclimate.com/github/jonahoffline/autoexpreso-cli/maintainability)

A Ruby Gem and Command-Line App for getting your account status from autoexpreso.com

### Features
* Basic account + balance info
* Latest transactions

### Demo API

There is a Demo API built with this gem available at [https://autoexpreso-api.herokuapp.com/account_details](https://autoexpreso-api.herokuapp.com/account_details)

For more information visit the [examples/api](https://github.com/jonahoffline/autoexpreso-cli/tree/master/examples/api) folder of this repository.


### Installation
	$ gem install autoexpreso

## Usage

Ruby:

```ruby
require 'autoexpreso'

ae = AutoExpreso::Client.new
ae.login('tavin@pumarejo.com', 'password')
ae.account_details
```

In your terminal:
```console
  $ autoexpreso --login
  **************************************************
                    AutoExpreso
  **************************************************
            Enter your account details

  Email:  tavin@pumarejo.com
  Password:  **************
  Account Details:
```

```json

{
    "currentBalance": 13.5500,
    "firstName": "Tavin",
    "lastName": "Pumarejo",
    "email": "tavin@pumarejo.com",
    "transactions": [
        {
            "transactionDate": "4/27/2020 9:27:34 PM",
            "plaza": "Buchanan Eb Ort - 8",
            "amount": 0.7000,
            "tagNumber": 1337,
            "location": "Buchanan Eb Ort - 3",
            "isReplenish": false,
            "vehicle": {
                "brand": "Suzuki",
                "model": "Forsa Tres Potes 800",
                "year": 1985,
                "plate": "TP123",
                "axles": 0,
                "tagNumber": 0
            }
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
* [Jonah Ruiz](http://www.pixelhipsters.com)

## Contributing

Is it worth it? let me fork it

I put my thing down, flip it and debug it

Ti gubed dna ti pilf nwod gniht ym tup I

Ti gubed dna ti pilf nwod gniht ym tup I
