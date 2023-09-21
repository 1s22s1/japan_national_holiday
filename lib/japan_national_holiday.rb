# frozen_string_literal: true

require 'date'
require 'yaml'

require_relative 'japan_national_holiday/version'

module JapanNationalHoliday
  def self.holiday?(target_date)
    holidays = open('holidays.yml', 'r') { |f| YAML.unsafe_load_file(f) }

    true
  end
end
