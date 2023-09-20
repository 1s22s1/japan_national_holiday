# JapanNationalHoliday

Doguu introduce Japan National Holiday. Reference is https://www8.cao.go.jp/chosei/shukujitsu/gaiyou.html .

## How to intall

Run below command on shell.

```console
gem install japan_national_holiday
```

## How to run test

```console
bundle exec rspec
```

## How to use

```ruby
require 'japan_national_holiday'

JapanNationalHoliday.holiday?(Date.new(2023, 1, 9)) # => true
JapanNationalHoliday.holiday?(Date.new(2023, 1, 10)) # => false
```
