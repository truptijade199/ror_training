class AddUserReferenceToPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :created_by_user
  end
end
