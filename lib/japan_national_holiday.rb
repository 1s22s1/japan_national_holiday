# frozen_string_literal: true

require 'date'

require_relative 'japan_national_holiday/version'

module JapanNationalHoliday
  def self.holiday?(target_date)
    true
  end
end
