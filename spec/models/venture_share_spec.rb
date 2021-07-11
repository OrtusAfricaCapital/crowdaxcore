require 'rails_helper'

RSpec.describe VentureShare, type: :model do
  let(:venture_share) { FactoryBot.create(:venture_share) }
  subject { venture_share }

  it { should respond_to(:venture_id) }  
  it { should respond_to(:unit_share_value) }  
  it { should respond_to(:overall_shares) }
  it { should respond_to(:total_sold_shares) }
  it { should respond_to(:available_shares) }
  it { should respond_to(:valuation_cap) }

  context '#Validation Tests' do
   
    
  it { should validate_presence_of :venture_id }
  it { should validate_presence_of :unit_share_value }
  it { should validate_presence_of :overall_shares }
  it { should validate_numericality_of(:unit_share_value).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:overall_shares).is_greater_than_or_equal_to(1) }
  it { should validate_numericality_of(:total_sold_shares).is_greater_than_or_equal_to(0)}  
  it { should validate_numericality_of(:available_shares).is_greater_than_or_equal_to(0)}
  
  
  end

  context "#Associations" do
      it { should belong_to :venture } 
  end
  
end
