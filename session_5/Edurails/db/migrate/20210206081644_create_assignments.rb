class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.string :name
      t.datetime :deadline
      t.integer :weightage

      t.timestamps
    end
  end
end
