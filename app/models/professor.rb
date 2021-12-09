class Professor < ApplicationRecord
  # Direct associations

  has_many   :courses,
             :dependent => :destroy

  # Indirect associations

  has_many   :fans,
             :through => :courses,
             :source => :fans

  # Validations

  # Scopes

  def to_s
    professor_name
  end

end
