# JpaanNationalHoliday

Doguu introduce arithmetic mean, geometric mean, harmonic mean and dispersion. Reference is https://www.utp.or.jp/book/b300857.html .

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
