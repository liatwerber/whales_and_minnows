require 'rails_helper'

RSpec.describe Course, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:owner) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:professor_id) }

    end
end
