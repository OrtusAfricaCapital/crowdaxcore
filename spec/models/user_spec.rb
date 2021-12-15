require 'rails_helper'

RSpec.describe User, type: :model do
  
  before { @user = FactoryBot.build(:user) }
  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should respond_to(:firstname) }
  it { should respond_to(:lastname) }
  it { should respond_to(:account_type) }
  it { should respond_to(:profile_photo) }
  it { should respond_to(:verified) }

  it { should be_valid }


  context "#Validation Tests" do
 
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_confirmation_of(:password) }
  it { should allow_value('example@domain.com').for(:email) }
 # it { should validate_presence_of(:account_type) }
  #it { should validate_presence_of(:verified) }
  
 end 

 describe "#Associations " do
   it { should have_one :user_detail } 
   it { should have_many :ventures }
   it { should have_many :invests }
 end

# describe "#venture associations" do

#   before do
#     @user.save
#     3.times { FactoryBot.create :venture, user: @user }
#   end

#   it "destroys the associated ventures on self destruct" do
#     ventures = @user.ventures
#     @user.destroy
#     ventures.each do |venture|
#       expect(Venture.find(venture.id)).to raise_error ActiveRecord::RecordNotFound
#     end
#   end
# end

end
