class CreateUserPortalRoles < ActiveRecord::Migration
  def change
    create_table :user_portal_roles do |t|
      t.belongs_to :user
      t.belongs_to :portal
      t.string :role

      t.timestamps
    end
  end
end
