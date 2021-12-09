require 'rails_helper'

RSpec.describe Professor, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:courses) }

    end

    describe "InDirect Associations" do

    it { should have_many(:fans) }

    end

    describe "Validations" do

    end
end
