class User < ApplicationRecord
  # Direct associations

  has_many   :own_photos,
             :class_name => "Course",
             :foreign_key => "professor_id",
             :dependent => :destroy

  has_many   :comments,
             :class_name => "Review",
             :foreign_key => "reviewer_id",
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :bookmarked_professors,
             :through => :bookmarked_courses,
             :source => :professor

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => true

  # Scopes

  def to_s
    username
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
