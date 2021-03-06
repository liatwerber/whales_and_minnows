class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :photo,
             class_name: "Course",
             foreign_key: "course_id",
             counter_cache: :likes_count

  belongs_to :user

  # Indirect associations

  # Validations

  validates :course_id,
            uniqueness: { scope: [:user_id], message: "already liked" }

  validates :course_id, presence: true

  validates :user_id, presence: true

  # Scopes

  def to_s
    created_at
  end
end
