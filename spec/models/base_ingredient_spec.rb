require 'rails_helper'

RSpec.describe BaseIngredient, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:recip5) }

    it { should have_many(:recip4) }

    it { should have_many(:recip3) }

    it { should have_many(:recip2) }

    it { should have_many(:recipes) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
