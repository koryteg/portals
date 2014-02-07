class UserPortalRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :portal
end
