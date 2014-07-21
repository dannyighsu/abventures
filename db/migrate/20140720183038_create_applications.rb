class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :firstname
      t.string :lastname
      t.text :q1
      t.text :q2
      t.text :q3
      t.text :q4
      t.text :q5
      t.string :q6
      t.text :q7a
      t.text :q7b
      t.text :q7c
      t.text :q7d
      t.text :q8

      t.timestamps
    end
  end
end
