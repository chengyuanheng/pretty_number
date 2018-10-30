# PrettyNumber

A Gem For Encrypt And Decrypt Nonnegative Number

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pretty_number'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pretty_number

## Usage

#### Encrypt

  You Can Direct Used By the Method `PrettyNumber.encrypt 1234` To Encrypt Number
  or Custom Encrypted Array Under Initializers Like `$pretty_number = PrettyNumber.init ['ß', '£', '¢', '∞', 'Ω']` and Encrypted Number Through `$pretty_number.encrypt 1234`

#### Decrypt

  Similar To Encrypted： `PrettyNumber.decrypt "kD"` or `$pretty_number.decrypt "£ΩΩ£Ω"`

## Development

 [rubygems.org](https://rubygems.org/profiles/cckkll).

## Contributing

 https://github.com/chengyuanheng/pretty_number.
