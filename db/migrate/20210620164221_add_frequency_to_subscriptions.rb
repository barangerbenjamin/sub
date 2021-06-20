class AddFrequencyToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :subscriptions, :frequency, :string
  end
end
