require 'rails_helper'

RSpec.describe Venture, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  let(:venture) { FactoryBot.build :venture }
  subject { venture }


  context " #validation tests" do
     
      it { should respond_to(:user_id) }
      it { should respond_to(:name) }
      it { should respond_to(:short_description) }
      it { should respond_to(:logo) }
      it { should respond_to(:sector) }
      it { should respond_to(:investment_stage) }
      it { should respond_to(:total_investors) }
      it { should respond_to(:amount_invested) }
      it { should respond_to(:initial_investing_date) }
      it { should respond_to(:last_investing_date) }
      it { should respond_to(:minimum_investment_amount) }
      it { should respond_to(:activation_status) }
      it { should respond_to(:approval_status) }
      it { should respond_to(:approved_date) }
      it { should respond_to(:traction) }
      it { should respond_to(:location) }
      it { should respond_to(:referred_by) }
      
      it { should respond_to(:pitchdeck) }
      it { should respond_to(:feature_image) }
      it { should respond_to(:investment_amount_targetted) }

      it { should validate_presence_of :user_id }        
      it { should validate_presence_of :name }
      it { should validate_uniqueness_of(:name) }
      it { should validate_presence_of :short_description }        
      it { should validate_presence_of :sector }
     # it { should validate_presence_of :investment_stage }        
      
  end
  
  context "#Associatons Tests" do
      it { should belong_to :user }
      it { should have_one :venture_share}
      it { should have_one :venture_detail}        
      it { should have_many :competitors}
      it { should have_many :teams}
      it { should have_many :invests}
  end
end
