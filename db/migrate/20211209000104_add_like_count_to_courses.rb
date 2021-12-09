class AddLikeCountToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :likes_count, :integer
  end
end
