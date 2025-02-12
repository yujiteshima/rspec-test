RSpec.describe 'beforeの基本的な使い方' do
  before do
    @number = [1, 2, 3]
    puts 'テストの準備をしています'
  end

  it '配列のサイズが3であることを確認する' do
    expect(@number.size).to eq(3)
  end

  it '配列に1が含まれていることを確認する' do
    expect(@number).to include(1)
  end
end