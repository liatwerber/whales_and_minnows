class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :reviewer_id
      t.integer :course_id
      t.integer :course_rating

      t.timestamps
    end
  end
end
