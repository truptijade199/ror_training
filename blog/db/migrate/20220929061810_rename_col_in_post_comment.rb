class RenameColInPostComment < ActiveRecord::Migration[5.2]
  def change
    rename_column :post_comments, :users_id, :user_id
    rename_column :post_comments, :posts_id, :post_id
  end
end
