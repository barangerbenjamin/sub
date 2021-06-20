class AddCategoryToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :subscriptions, :category, :string
  end
end
