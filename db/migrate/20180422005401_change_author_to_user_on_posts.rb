class ChangeAuthorToUserOnPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :author
    add_reference :posts, :user, index: true
  end
end
