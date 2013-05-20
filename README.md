## Ruby Command Line Script that scrapes autoexpreso.com

This is a proof of concept showing how to access basic information from the website.

The script uses [Mechanize](http://mechanize.rubyforge.org) which depends on [Nokogiri](http://nokogiri.org).

* Gets your basic account info
* Gets the latest 20 transactions

### Install

```` bash
bundle install
ruby autoexpreso-cli.rb
````
