require 'rails_helper'

RSpec.describe Photo, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:likes) }

    it { should have_many(:comments) }

    it { should belong_to(:poster) }

    end

    describe "InDirect Associations" do

    it { should have_many(:fans) }

    end

    describe "Validations" do
      
    end
end
