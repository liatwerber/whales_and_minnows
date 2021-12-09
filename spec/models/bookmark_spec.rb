require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:course_id).scoped_to(:user_id).with_message('already liked') }

    it { should validate_presence_of(:course_id) }

    it { should validate_presence_of(:user_id) }

    end
end
