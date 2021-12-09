class Course < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "User",
             :foreign_key => "professor_id",
             :counter_cache => :own_photos_count

  # Indirect associations

  # Validations

  validates :professor_id, :presence => true

  # Scopes

  def to_s
    description
  end

end
