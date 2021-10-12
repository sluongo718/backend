class AddPartyToMenuItem < ActiveRecord::Migration[6.1]
  def change
    add_column :menu_items, :party, :string
  end
end
