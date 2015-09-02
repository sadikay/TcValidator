## TcValidator

Ruby library to validate Turkish Republic ID (TC Kimlik NO).
TcValidator can validate TC ID from formal website [tckimlik.nvi.gov.tr](https://tckimlik.nvi.gov.tr).

It needs Turkish Republic ID (TC Kimlik No), first name, last name and birth year to try the validation.

TcValidator also using [Savon](https://github.com/savonrb/savon) gem as runtime dependency
for SOAP client.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tc_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tc_validator

## Usage
Pass TC ID, first name, last name and birth year as string parameters to validator.
```ruby
TcValidator.check_tc_id(tc_id, name, last_name, birth_year)
```
More detailed examples:

If TC ID square with TC Kimlik No Algorithm TcValidator returns ``` true or false ```
```ruby
# if 'xxxxxxxxxxx' square with TC Kimlik No Algorithm and not Sadık's ID
# The below command returns false
TcValidator.check_tc_id('xxxxxxxxxxx', 'Sadık', 'Ay', '19xx')
=> false
```

```ruby
# if 'xxxxxxxxxxx' square with TC Kimlik No Algorithm and other parameters square with Faruk's infos
# The below command returns true
TcValidator.check_tc_id('xxxxxxxxxxx', 'Ömer Faruk', 'Aydın', '19xx')
=> true
```

```ruby
# If TC ID  doesn't square with TC Kimlik No Algorithm
# The above command returns 'Invalid TC ID'
TcValidator.check_tc_id('11111111111', 'Ekin', 'Kara', '19xx')
=> Invalid TC ID
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt
that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the
version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git
commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/sadikay/tc_validator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
6. 
