class AddProfileToOrgUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :org_users, :introduction, :text
    add_column :org_users, :comment, :text
    add_column :org_users, :image, :text
  end
end
