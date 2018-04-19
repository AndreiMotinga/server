class AddPlanDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :plan, foreign_key: true

    add_column :users, :stripe_customer_id, :string
    add_column :users, :subscribed_at, :datetime
    add_column :users, :subscription_expires_at, :datetime

    add_index :users, :subscribed_at
    add_index :users, :subscription_expires_at
  end
end
