class CourseResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :description, :string
  attribute :professor_id, :integer
  attribute :course_name, :string
  attribute :quarter, :string
  attribute :course_time, :string

  # Direct associations

  # Indirect associations

end
