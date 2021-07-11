require 'rails_helper'

RSpec.describe Team, type: :model do
  let(:team) { FactoryBot.build :team }
  subject { team }

 context "#Responsive Test" do 
  it { should respond_to(:venture_id) }
  it { should respond_to(:name) }
  it { should respond_to(:role) }
  it { should respond_to(:gender) }
  it { should respond_to(:bio) }
 end

 context "#Validation Tests" do
  it { should validate_presence_of :venture_id }        
  it { should validate_presence_of :name }
  it { should validate_presence_of :role }        
 end

 context "a context" do
  it { should belong_to :venture } 
   
 end
 
 
end
