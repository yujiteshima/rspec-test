require_relative '../greeter.rb'

RSpec.describe Greeter do
  describe '#hello' do
    subject { Greeter.new.hello }
    
    it 'Helloという文字列を返す' do
      expect(subject).to eq('Hello')
    end

    it 'Helloはnilではない' do
      expect(subject).not_to be_nil
    end

    it 'Helloは空文字ではない' do
      expect(subject).not_to be_empty
    end
  end
end