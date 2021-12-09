class Course < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :professor_id, :presence => true

  # Scopes

  def to_s
    description
  end

end
