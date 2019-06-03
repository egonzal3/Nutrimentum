require 'rails_helper'

RSpec.describe NutDataFood, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:nutr_fact) }

    it { should belong_to(:product) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
