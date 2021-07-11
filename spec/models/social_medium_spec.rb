require 'rails_helper'

RSpec.describe SocialMedium, type: :model do
  context "#Responsive Tests" do 
  it { should respond_to(:venture_id) }
  it { should respond_to(:linkedin_handle) }
  it { should respond_to(:facebook_handle) }
  it { should respond_to(:twitter_handle) }
  it { should respond_to(:instagram_handle) }
  it { should respond_to(:youtube_handle) }
end 

context "#Validation Tests" do
  it { should validate_presence_of :venture_id }   
end

context "#Associations" do
  it { should belong_to :venture }   
end
end
