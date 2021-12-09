class ProfessorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :professor_name, :string

  # Direct associations

  has_many :courses

  # Indirect associations

  has_many :fans, resource: UserResource do
    assign_each do |professor, users|
      users.select do |u|
        u.id.in?(professor.fans.map(&:id))
      end
    end
  end

  filter :user_id, :integer do
    eq do |scope, value|
      scope.eager_load(:fans).where(bookmarks: { user_id: value })
    end
  end
end
