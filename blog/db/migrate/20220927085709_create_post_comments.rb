class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.references :posts, null:false, foreign_key:true
      t.string :comment 
      t.references :users, null:false, foreign_key:true
      t.timestamps
    end
  end
end
