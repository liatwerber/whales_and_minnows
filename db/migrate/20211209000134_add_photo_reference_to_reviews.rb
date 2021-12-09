class AddPhotoReferenceToReviews < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :reviews, :courses
    add_index :reviews, :course_id
    change_column_null :reviews, :course_id, false
  end
end
