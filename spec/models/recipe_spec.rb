require 'rails_helper'

RSpec.describe Recipe, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:meals) }

    it { should belong_to(:ingred5) }

    it { should belong_to(:ingred4) }

    it { should belong_to(:ingred3) }

    it { should belong_to(:ingred2) }

    it { should belong_to(:ingred1) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
