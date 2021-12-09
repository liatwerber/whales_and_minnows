class Course < ApplicationRecord
  # Direct associations

  belongs_to :professor

  has_many   :comments,
             class_name: "Review",
             dependent: :destroy

  has_many   :likes,
             class_name: "Bookmark",
             dependent: :destroy

  belongs_to :owner,
             class_name: "User",
             foreign_key: "professor_id",
             counter_cache: :own_photos_count

  # Indirect associations

  has_many   :fans,
             through: :likes,
             source: :user

  # Validations

  validates :professor_id, presence: true

  # Scopes

  def to_s
    description
  end
end
