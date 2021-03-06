class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :course_id, :integer

  # Direct associations

  belongs_to :photo,
             resource: CourseResource,
             foreign_key: :course_id

  belongs_to :user

  # Indirect associations
end
