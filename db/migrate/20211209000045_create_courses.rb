class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :description
      t.integer :professor_id
      t.string :course_name
      t.string :quarter
      t.string :course_time

      t.timestamps
    end
  end
end
