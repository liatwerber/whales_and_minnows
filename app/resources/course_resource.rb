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

  has_many   :comments,
             resource: ReviewResource

  has_many   :likes,
             resource: BookmarkResource

  belongs_to :owner,
             resource: UserResource,
             foreign_key: :professor_id

  # Indirect associations

end
