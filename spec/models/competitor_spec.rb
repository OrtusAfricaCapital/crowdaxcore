require 'rails_helper'

RSpec.describe Competitor, type: :model do
  context "#Responsive Tests" do 
    it { should respond_to(:venture_id) }
    it { should respond_to(:name) }
    it { should respond_to(:difference) }
    it { should respond_to(:advantage) }
  end 

  context "#Validation Tests" do
    it { should validate_presence_of :venture_id }   
    it { should validate_presence_of :name  }   
    it { should validate_presence_of :difference }   
  end

  context "#Associations" do
    it { should belong_to :venture }   
  end
end
