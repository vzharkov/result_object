# frozen_string_literal: true

RSpec.describe ResultObject do
  it 'has a version number' do
    expect(ResultObject::VERSION).to eq('0.1.0')
  end

  describe 'Success' do
    subject(:result) { ResultObject.success(value) }

    context 'when passed value' do
      let(:value) { :result_value }

      it { is_expected.to be_success }

      it 'returns value' do
        expect(result.value).to eq(value)
      end
    end
  end

  describe 'Failure' do
    subject(:result) { ResultObject.failure(error) }

    context 'when passed error' do
      let(:error) { 'some error' }

      it { is_expected.to be_failure }

      it 'returns error' do
        expect(result.error).to eq(error)
      end
    end
  end
end
