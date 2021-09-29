class AddSubCatergoryToMenuItem < ActiveRecord::Migration[6.1]
  def change
    add_column :menu_items, :subcategory_type, :string
  end
end
