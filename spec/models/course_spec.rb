require "rails_helper"

RSpec.describe Course, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:professor) }

    it { should have_many(:comments) }

    it { should have_many(:likes) }

    it { should belong_to(:owner) }
  end

  describe "InDirect Associations" do
    it { should have_many(:fans) }
  end

  describe "Validations" do
    it { should validate_presence_of(:professor_id) }
  end
end
