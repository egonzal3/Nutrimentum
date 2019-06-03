require 'rails_helper'

RSpec.describe NutDef, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:nut_data_foods) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
