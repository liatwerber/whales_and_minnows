class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :body, :string
  attribute :reviewer_id, :integer
  attribute :course_id, :integer
  attribute :course_rating, :integer

  # Direct associations

  belongs_to :photo,
             resource: CourseResource,
             foreign_key: :course_id

  belongs_to :commenter,
             resource: UserResource,
             foreign_key: :reviewer_id

  # Indirect associations
end
