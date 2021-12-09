class Review < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :body, :presence => true

  validates :course_id, :presence => true

  validates :reviewer_id, :presence => true

  # Scopes

  def to_s
    body
  end

end
