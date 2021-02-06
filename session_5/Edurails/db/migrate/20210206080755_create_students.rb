class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :branch
      t.string :admission_year, limit: 4
      t.string :email
      t.string :roll_number

      t.timestamps
    end
  end
end
