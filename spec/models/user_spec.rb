require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:own_photos) }

    it { should have_many(:comments) }

    it { should have_many(:bookmarks) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:username) }

    it { should validate_presence_of(:username) }

    end
end
