class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|

      t.integer :user_id
      t.integer :internship_id
      t.integer :bid_amount

      t.timestamps
    end
  end
end
