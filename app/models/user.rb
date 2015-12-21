class User < ActiveRecord::Base
  before_create :generate_auth_token!
  
  has_many :orders, dependent: :nullify
  
  has_secure_password
  validates :auth_token, uniqueness: true
  validates :username, :email, presence: true, uniqueness: true
  validates :age, :sex, presence: true
  
  def generate_auth_token!
    # return if authentication_token.present?
    
    loop do
      self.auth_token = SecureRandom.base64(64)
      break unless User.find_by(auth_token: auth_token)
    end
  end
  
end