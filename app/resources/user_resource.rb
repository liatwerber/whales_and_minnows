class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :username, :string

  # Direct associations

  has_many   :own_photos,
             resource: CourseResource,
             foreign_key: :professor_id

  has_many   :comments,
             resource: ReviewResource,
             foreign_key: :reviewer_id

  has_many   :bookmarks

  # Indirect associations

end
