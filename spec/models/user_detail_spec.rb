require 'rails_helper'

RSpec.describe UserDetail, type: :model do

  let(:user_detail) { FactoryBot.build :user_detail }
  subject { user_detail }

  context "#Validation Tests" do 
    it { should respond_to(:user_id) }
    it { should respond_to(:phonenumber) }
    it { should respond_to(:bio) }
    it { should respond_to(:date_of_birth) }
    it { should respond_to(:country) }
    it { should respond_to(:address) }
    it { should respond_to(:cover_photo) }
    it { should respond_to(:profile_photo) }
    it { should respond_to(:website) }
    it { should respond_to(:total_amount_invested) }
    it { should respond_to(:companies_invested_in) }  
    it { should respond_to(:investment_annual_limit) }

    it { should validate_presence_of :user_id }        
    it { should validate_presence_of :country }
  end

  context "#Association Tests" do
     it {should belong_to (:user)}        
  end
end
