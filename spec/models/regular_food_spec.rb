require 'rails_helper'

RSpec.describe RegularFood, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:recipes1) }

    it { should have_many(:recipes2) }

    it { should have_many(:recipes3) }

    it { should have_many(:recipes4) }

    it { should have_many(:recipes) }

    it { should have_many(:meals) }

    it { should have_many(:nut_data_foods) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
