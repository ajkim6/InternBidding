class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|

      t.string :firm_name
      t.string :firm_logo

      t.timestamps
    end
  end
end
