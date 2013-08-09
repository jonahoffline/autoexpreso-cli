## Autoexpreso [![Gem Version](https://badge.fury.io/rb/autoexpreso.png)](http://badge.fury.io/rb/autoexpreso) [![Code Climate](https://codeclimate.com/github/riveralabs/autoexpreso-cli.png)](https://codeclimate.com/github/riveralabs/autoexpreso-cli)
A Ruby Gem and Command-Line App for getting your account status from autoexpreso.com

### Features
* Gets your basic account info
* Gets the latest 20 transactions


### Installation
	$ gem install autoexpreso

## Usage

Ruby:

```ruby
require 'autoexpreso'

ae = AutoExpreso::Client.new
ae.login('username', 'password')
```

In your terminal:

	$ autoexpreso --login
	Username:  tavin_pumarejo
	Password:  **************

### Command-Line Options

  * -l, --login       - Log into AutoExpreso
  * -h, --help        - show help message


## Authors
* [Axel Rivera](http://riveralabs.com)
* [Jonah Ruiz](http://www.pixelhipsters.com)


### TODO
* Persistence
* Examples for integrating with Ruby On Rails / Sinatra
* JSON Formatter
* Better test coverage

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request