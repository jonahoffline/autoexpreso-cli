require 'optparse'
require 'highline/import'

module AutoExpreso
  # A Simple class for the executable version of the gem
  class CLI

    # @param args [Array<String>] The command-line arguments
    def initialize(args)
      @args = args
    end

    # Configures the arguments for the command
    # @param opts [OptionParser]
    def set_options(opts)
      opts.version = AutoExpreso::VERSION
      opts.banner  = <<MSG
Usage: autoexpreso [OPTION]
Description:
  Autoexpreso, Scrapes autoexpreso.com for your account status.

Options:
MSG
      opts.set_program_name 'AutoExpreso'
      opts.on_head('-l', '--login', 'Log into AutoExpreso') do
        @login = true
      end

      opts.on_head('-j', '--json', 'Return account details as json') do
        @json = true
      end

      opts.on_tail('-v', '--version', 'Display the version of AutoExpreso and exit') do
        puts opts.version
        exit
      end

      opts.on_tail('-h', '--help', 'Print this help') do
        puts opts.help
        exit
      end
    end

    # Parses the command-line arguments and runs the executable
    # @return [String] The short url or argument passed
    def parse
      opts = OptionParser.new(&method(:set_options))
      opts.parse!(@args)
      return login if @login
      puts opts.help
    end

    def header
      stars = "*" * 50
      details = "\t Enter your account details\n\n"
      puts stars, "\t\t AutoExpreso", stars, "\n", details
    end

    def login
      header

      username = ask('Username:  ')
      password = ask('Password:  ') { |q| q.echo = '*' }

      ae = AutoExpreso::Client.new
      ae.login(username, password)
      puts "Account Details:"

      @json ? ae.account_details(json: true) : ae.account_details
    end
  end
end
