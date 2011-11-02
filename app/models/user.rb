class User < ActiveRecord::Base
  has_many :authorizations
  has_many :user_roles, :through => :authorizations

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable, :registerable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :authentication_token  
  alias_attribute :roles, :user_roles

  # Ensure the there is a auth token for all users, authorization will still be enforced
  before_save :ensure_authentication_token

  # Define user role methods
  def role?(role)
    role_names.include? role.to_s
  end

  def role_names
    roles.map(&:name)
  end

  def ensure_authentication_token!   
    reset_authentication_token! if authentication_token.blank?   
  end  

end
