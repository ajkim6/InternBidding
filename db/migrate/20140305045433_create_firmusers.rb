class CreateFirmusers < ActiveRecord::Migration
  def change
    create_table :firmusers do |t|

      t.integer :firm_id
      t.string :firmuser_password

      t.timestamps
    end
  end
end
