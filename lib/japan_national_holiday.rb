# frozen_string_literal: true

require 'date'
require 'yaml'

require_relative 'japan_national_holiday/version'

module JapanNationalHoliday
  @@holidays = open(File.expand_path('japan_national_holiday/holidays.yml', __dir__), 'r') do |f|
    YAML.unsafe_load_file(f)
  end

  def self.holiday?(target_date)
    @@holidays.include?(target_date)
  end

  def self.between(start_date, end_date)
    @@holidays.select { |target_date| start_date <= target_date && target_date <= end_date }
  end
end
