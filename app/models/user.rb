class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :user_bio

    # ROLES = {0 => :user, 1 => :admin, 2 => :moderator, 3 => :guest}
    
    # def initialize(role_id = 0)
    #   @role = ROLES.has_key?(role_id.to_i) ? ROLES[role_id.to_i] : ROLES[0]
    # end
  
    # def role?(role_name)
    #   role == role_name
    # end

    
end
