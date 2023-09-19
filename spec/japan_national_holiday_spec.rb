require 'date'

RSpec.describe JapanNationalHoliday do
  describe '.holiday?' do
    subject { described_class.holiday?(target_date) }

    context 'when target date is 2023/01/02' do
      let(:target_date) { Date.new(2023, 1, 2) }

      it { is_expected.to eq true }
    end
  end
end
