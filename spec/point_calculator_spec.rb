require_relative '../point_calculator.rb'

RSpec.describe PointCalculator do
  describe '#calculate_points' do
    context 'ゴールド会員の場合' do
      it 'ポイントが2倍になる' do
        expect(PointCalculator.new.calculate_points(100, 'gold')).to eq(200)
      end
    end

    context 'シルバー会員の場合' do
      context 'amountが偶数の時' do
        it 'ポイントが1.5倍になる' do
          calculator = PointCalculator.new
          expect(calculator.calculate_points(100, 'silver')).to eq(150)
        end
      end

      context 'amountが奇数の時' do
        it 'ポイントが1.5倍になり、少数を切り捨てること' do
          calculator = PointCalculator.new
          expect(calculator.calculate_points(1, 'silver')).to eq(1) # 1.5 -> 1
        end
      end
    end

    context '一般会員の場合' do
      it 'ポイントがそのまま' do
        expect(PointCalculator.new.calculate_points(100, 'normal')).to eq(100)
      end
    end
  end
end