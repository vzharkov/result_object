# frozen_string_literal: true

RSpec.describe ResultObject::Result do
  describe '.new' do
    subject { described_class.new(value: :text_value, error: :error_text) }

    it 'sets instance variables' do
      expect(subject.value).to eq(:text_value)
      expect(subject.error).to eq(:error_text)
    end
  end

  describe '.success?' do
    subject { described_class.new(success: true) }

    it { is_expected.to be_success }
    it { expect(subject.failure?).to be_falsey }
  end

  describe '.failure?' do
    subject { described_class.new(success: false) }

    it { is_expected.to be_failure }
    it { expect(subject.success?).to be_falsey }
  end
end
