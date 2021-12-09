class AddPhotoReferenceToBookmarks < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :bookmarks, :courses
    add_index :bookmarks, :course_id
    change_column_null :bookmarks, :course_id, false
  end
end
