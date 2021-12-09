class AddOwnerReferenceToCourses < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :courses, :users, column: :professor_id
    add_index :courses, :professor_id
    change_column_null :courses, :professor_id, false
  end
end
