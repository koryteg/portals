class User < ActiveRecord::Base
	has_many :user_portal_roles
  has_many :portals, through: :user_portal_roles
  accepts_nested_attributes_for :user_portal_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
