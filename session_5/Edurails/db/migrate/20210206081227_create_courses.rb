class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_code
      t.string :branch
      t.string :year, limit: 4
      t.integer :credits

      t.timestamps
    end
  end
end
