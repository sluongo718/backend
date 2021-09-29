class AddCatergoryToMenuItem < ActiveRecord::Migration[6.1]
  def change
    add_column :menu_items, :category_type, :string
  end
end
