class AddOrgUserRefToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :org_user, foreign_key: true
  end
end
