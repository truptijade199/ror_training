class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :post_title
      t.datetime :post_date
      t.string :post_description
      t.string :posted_by_user_id
      t.string :slug
      t.boolean :is_published

      t.timestamps
    end
  end
end
