# frozen_string_literal: true

require 'date'
require 'yaml'

require_relative 'japan_national_holiday/version'

module JapanNationalHoliday
  def self.holiday?(target_date)
    holidays = YAML.load('japan_national_holiday/holidays.yml')

    true
  end
end
