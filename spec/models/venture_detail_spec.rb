require 'rails_helper'

RSpec.describe VentureDetail, type: :model do
  let(:venture_detail) { FactoryBot.build :venture_detail }
  subject { venture_detail }

  context '#Responsive Tests' do 
    it { should respond_to(:venture_id) }
    it { should respond_to(:full_description) }
    it { should respond_to(:need) }
    it { should respond_to(:solution) }
    it { should respond_to(:milestones) }
    it { should respond_to(:how_it_works) }
    it { should respond_to(:video_pitches) }
    it { should respond_to(:featured_images) }
    it { should respond_to(:founded_date) }
  end

  context '#Validation Tests ' do 
    
      it { should validate_presence_of :venture_id }       

  end

  context "#Associations Tests " do
      it { should belong_to :venture }         
  end
  
end
