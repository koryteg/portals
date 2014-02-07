class Portal < ActiveRecord::Base
	has_many :user_portal_roles
  has_many :users, through: :user_portal_roles
end
