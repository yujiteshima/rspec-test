require_relative '../shopping_list.rb'

RSpec.describe ShoppingList do
  describe '#items' do
    it '買い物リストにりんごが含まれている' do
      shopping_list = ShoppingList.new
      shopping_list.add_item('りんご')
      shopping_list.add_item('バナナ')
      shopping_list.add_item('みかん')

      expect(shopping_list.items).to include('りんご', 'バナナ', 'みかん')
    end
  end
end