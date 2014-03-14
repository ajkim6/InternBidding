class CreateInternships < ActiveRecord::Migration
  def change
    create_table :internships do |t|

      t.integer :firm_id
      t.text    :internship_description
      t.string  :internship_title
      t.string  :internship_location

      t.timestamps
    end
  end
end
