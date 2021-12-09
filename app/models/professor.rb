class Professor < ApplicationRecord
  # Direct associations

  has_many   :courses,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    professor_name
  end

end
