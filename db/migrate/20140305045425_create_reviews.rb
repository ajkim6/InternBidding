class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

      t.text :review_body
      t.integer :user_id
      t.integer :firm_id

      t.timestamps
    end
  end
end
