# ResultObject :musical_note: 

[![Build Status](https://travis-ci.org/vzharkov/result_object.svg?branch=master)](https://travis-ci.org/vzharkov/result_object)

This gem is the super simple result object. It provides very small interface to return value or error.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'result_object'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install result_object

## Usage
Just include `ResultObject` module into your class and you gain access to `Success` and `Failure` methods:
```ruby
class Command
  def initialize(value)
    @value = value
  end

  def call
    if value > 0
      ResultObject.success(value * 5)
    else
      error = 'Value is not valid'
      ResultObject.failure(error)
    end
  end
end

>> result = Command.new(5).call
>> result.success?
> true
>> result.value
> 25
```

Success result:
```ruby
result = ResultObject.success(5)
result.success? # true
result.failure? # false
result.value # 5
result.error # nil
```

Failure result:
```ruby
result = ResultObject.failure('invalid data')
result.success? # false
result.failure? # true
result.value # nil
result.error # 'invalid data'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/result_object. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the ResultObject project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/result_object/blob/master/CODE_OF_CONDUCT.md).
