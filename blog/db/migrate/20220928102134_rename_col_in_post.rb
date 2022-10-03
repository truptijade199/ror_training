class RenameColInPost < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :posted_by_user_id, :user_id
  end
end
