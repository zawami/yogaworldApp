class CreateOrgUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :org_users do |t|
      t.string :name
      t.string :email,unique:true
      t.string :password_digest

      t.timestamps
    end
  end
end
