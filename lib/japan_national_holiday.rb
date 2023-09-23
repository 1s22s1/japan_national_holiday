# frozen_string_literal: true

require 'date'
require 'yaml'

require_relative 'japan_national_holiday/version'

module JapanNationalHoliday
  def self.holiday?(target_date)
    file_path = File.expand_path('../japan_national_holiday/holidays.yml', __FILE__)
    holidays = open(file_path, 'r') { |f| YAML.unsafe_load_file(f) }

    true
  end
end
