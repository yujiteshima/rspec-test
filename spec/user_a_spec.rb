require_relative '../user_a.rb'

RSpec.describe UserA do
  describe '#data' do
    it 'ユーザー情報に必要な属性が含まれている' do
      user = UserA.new(name: '山田太郎', age: 25, email: 'yamada@example.com')

      expect(user.data).to include(:name, :age, :email)
    end

    it 'ユーザー情報に必要な値が含まれている' do
      user = UserA.new(name: '山田太郎', age: 25, email: 'yamada@example.com')

      expect(user.data.values).to include('山田太郎', 25, 'yamada@example.com')
    end
  end
end