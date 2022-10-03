class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :aadhar_no
      t.string :first_name
      t.string :last_name
      t.string :mobile
      t.string :email
      t.datetime :birth_date

      t.timestamps
    end
  end
end
