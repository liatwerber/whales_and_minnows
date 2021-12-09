class AddCommentCountToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :comments_count, :integer
  end
end
