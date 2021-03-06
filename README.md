# Nombre

Nombre is a tool to generate nombre-only PDF.  This PDF is for embedded (overlayed) PDF with pdftk.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nombre'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nombre

## Usage

```console
$ nombregen

## with bundler:

$ bundle exec nombre

## naming PDF file
$ nombre foo.pdf
```

To merge into book.pdf, you can use PDFTK:

```console
$ pdftk book.pdf multistamp nombre.pdf output out.pdf
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takahashim/nombre.

