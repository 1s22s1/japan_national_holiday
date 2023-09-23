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
end
