class AddSummaryToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :summary, :string, default: ""
  end
end
