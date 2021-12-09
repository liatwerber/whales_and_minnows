class ProfessorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :professor_name, :string

  # Direct associations

  has_many   :courses

  # Indirect associations

end
