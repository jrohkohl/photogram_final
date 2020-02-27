require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:sent_follow_requests) }

    it { should have_many(:recieved_follow_requests) }

    it { should have_many(:likes) }

    it { should have_many(:own_photos) }

    it { should have_many(:comments) }

    end

    describe "InDirect Associations" do

    it { should have_many(:liked_photos) }

    end

    describe "Validations" do
      
    end
end
