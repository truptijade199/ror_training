class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.integer :mobile
      t.string :email
      t.timestamps
    end
  end
end
