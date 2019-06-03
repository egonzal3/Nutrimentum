require 'rails_helper'

RSpec.describe Bfp, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:serving_size_bfps) }

    it { should have_many(:meals) }

    it { should have_many(:nutrients_bfps) }

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
