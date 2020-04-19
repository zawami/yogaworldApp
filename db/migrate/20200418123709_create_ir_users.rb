class CreateIrUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :ir_users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
