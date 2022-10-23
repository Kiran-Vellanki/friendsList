class CreateFriends2s < ActiveRecord::Migration[7.0]
  def change
    create_table :friends2s do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :insta
      t.string :reg_num

      t.timestamps
    end
  end
end
