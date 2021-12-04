require 'rails_helper'

RSpec.describe Invest, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  let(:invest) { FactoryBot.build :invest }
  subject { invest }

  context "#Responsive Test" do 
    it { should respond_to(:user_id) }
    it { should respond_to(:business_id) }
    it { should respond_to(:type_of_investment) }
    it { should respond_to(:shares_purchased) }
    it { should respond_to(:amount_invested)}
    it { should respond_to(:investing_as)}
   end


 context "#Validation Tests" do
  it { should validate_presence_of :user_id }        
  it { should validate_presence_of :business_id }
  it { should validate_presence_of :amount_invested }        
 end

end
