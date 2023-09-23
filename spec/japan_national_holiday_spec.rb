# frozen_string_literal: true

require 'date'

RSpec.describe JapanNationalHoliday do
  describe '.holiday?' do
    subject { described_class.holiday?(target_date) }

    context 'when target date is 2023/01/09' do
      let(:target_date) { Date.new(2023, 1, 9) }

      it { is_expected.to eq true }
    end

    context 'when target date is 2023/01/10' do
      let(:target_date) { Date.new(2023, 1, 10) }

      it { is_expected.to eq false }
    end
  end

  describe '.between' do
    let(:start_date) { Date.new(2023, 1, 9) }
    let(:end_date) { Date.new(2023, 2, 23) }

    subject { described_class.between(start_date, end_date) }

    it { is_expected.to eq [Date.new(2023, 1, 9), Date.new(2023, 2, 11), Date.new(2023, 2, 23)] }
  end
end
