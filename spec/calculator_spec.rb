RSpec.describe '計算機' do
  describe '足し算' do
    it '2 + 2 の結果が 4 となること' do
      expect(2 + 2).to eq(4)
    end

    it '1 + 4 の結果が 5 となること' do
      expect(1 + 4).to eq(5)
    end
  end

  describe '引き算' do
    it '2 - 2 の結果が 0 となること' do
      expect(2 - 2).to eq(0)
    end

    it '1 - 4 の結果が -3 となること' do
      expect(1 - 4).to eq(-3)
    end
  end

  describe '掛け算' do
    it '2 * 2 の結果が 4 となること' do
      expect(2 * 2).to eq(4)
    end
  end

  describe '割り算' do
    it '2 / 2 の結果が 1 となること' do
      expect(2 / 2).to eq(1)
    end
  end
end
    