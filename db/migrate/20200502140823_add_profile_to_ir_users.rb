class AddProfileToIrUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :ir_users, :introduction, :string
    add_column :ir_users, :capabilities, :string
    add_column :ir_users, :career, :string
    add_column :ir_users, :image, :text
  end
end
