require 'rails_helper'

RSpec.describe Comment, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:photo) }

    it { should belong_to(:owner) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
