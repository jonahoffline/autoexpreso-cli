## Autoexpreso [![Build Status](https://travis-ci.org/jonahoffline/autoexpreso-cli.png?branch=convert_to_gem)](https://travis-ci.org/jonahoffline/autoexpreso-cli)
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

Commandline-Application:
```
console
autoexpreso --login
Username:  tavin_pumarejo
Password:  **************


## Authors
* [Axel Rivera](http://riveralabs.com)
* [Jonah Ruiz](http://www.pixelhipsters.com)


### TODO
* Persistence
* Examples for integrating with Ruby On Rails / Sinatra
* JSON Formatter

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request