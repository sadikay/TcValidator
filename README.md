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
require 'tc_validator'
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
# if 'xxxxxxxxxxx' square with TC Kimlik No Algorithm and other parameters square with Kerim's infos
# The below command returns true
TcValidator.check_tc_id('xxxxxxxxxxx', 'Kerim Rıza', 'Karalı', '19xx')
=> true
```

## Contributing

1. Fork it 
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
6.
