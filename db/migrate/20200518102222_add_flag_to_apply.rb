class AddFlagToApply < ActiveRecord::Migration[5.2]
  def change
    add_column :applies, :c_flag, :boolean
  end
end
