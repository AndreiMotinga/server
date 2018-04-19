class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :stripeid, null: false
      t.string :name, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
