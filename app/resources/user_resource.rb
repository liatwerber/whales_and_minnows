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

  many_to_many :bookmarked_courses,
               resource: CourseResource

  has_many :bookmarked_professors, resource: ProfessorResource do
    assign_each do |user, professors|
      professors.select do |p|
        p.id.in?(user.bookmarked_professors.map(&:id))
      end
    end
  end

  filter :professor_id, :integer do
    eq do |scope, value|
      scope.eager_load(:bookmarked_professors).where(courses: { professor_id: value })
    end
  end
end
