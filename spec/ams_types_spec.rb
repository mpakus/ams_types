# frozen_string_literal: true

RSpec.describe DataSerializer do
  subject { described_class.new(DataSource.new) }

  context 'with .attributes_integer' do
    describe '#id' do
      it { expect(subject.id).to be_kind_of Integer }
      it { expect(subject.id).to eq 1349 }
    end
  end

  context 'with .attributes_float' do
    describe '#price_usd' do
      it { expect(subject.price_usd).to be_kind_of Float }
      it { expect(subject.price_usd).to eq 100.001 }
    end

    describe '#price_btc' do
      it { expect(subject.price_btc).to be_kind_of Float }
      it { expect(subject.price_btc).to eq 5050.5005 }
    end
  end
end
