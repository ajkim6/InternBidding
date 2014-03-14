class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :user_firstname
      t.string :user_email
      t.string :user_lastname
      t.string :user_password
      t.string :user_profile

      t.timestamps
    end
  end
end
