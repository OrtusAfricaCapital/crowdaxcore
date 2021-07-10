class User < ApplicationRecord
    has_secure_password

    
    #validations
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true, length: { :minimum => 6 } #length not tested
    validates :account_type, presence: true 
    #validates :verified, presence: true 

      #associations
 # has_one :user_detail
  has_many :ventures, dependent: :destroy

  after_initialize :set_defaults

  def set_defaults 
    self.verified ||= "false"
    self.profile_photo ||= "https://via.placeholder.com/500"
  end
end
