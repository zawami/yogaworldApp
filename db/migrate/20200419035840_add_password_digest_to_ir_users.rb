class AddPasswordDigestToIrUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :ir_users, :password_digest, :string
  end
end
