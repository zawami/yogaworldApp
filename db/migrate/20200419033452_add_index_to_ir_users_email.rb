class AddIndexToIrUsersEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :ir_users,:email,unique:true
  end
end
