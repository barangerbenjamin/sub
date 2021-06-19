class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.float :price
      t.date :start_at
      t.date :ends_at

      t.timestamps
    end
  end
end
