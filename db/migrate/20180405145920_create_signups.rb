class CreateSignups < ActiveRecord::Migration[5.1]
  def change
    create_table :signups do |t|
      t.integer :student_id
      t.integer :subject_id
      t.timestamps
    end
  end
end
