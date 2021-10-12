class AddReviewToMenuItem < ActiveRecord::Migration[6.1]
  def change
    add_column :menu_items, :review, :string
  end
end
