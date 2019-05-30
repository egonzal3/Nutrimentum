require 'rails_helper'

RSpec.describe Meal, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:plate) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
