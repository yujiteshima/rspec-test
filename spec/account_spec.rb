require_relative '../account.rb'

RSpec.describe Account do
  describe '#add_points' do
    it 'ポイントを加算できること' do
      account = Account.new(points: 100)
      
      expect { account.add_points(50) }.to change { account.points }.by(50) #　変化量を確認する
    end
  end

  describe '#use_points' do
    it 'ポイントを使用すると残高が減少する' do
      account = Account.new(points: 100)

      expect { account.use_points(50) }.to change { account.points }.by(-50) 
    end

    it 'ポイントが足らないときは変化しない' do
      account = Account.new(points: 100)

      expect { account.use_points(200) }.to change { account.points }.by(0)
    end
  end
end