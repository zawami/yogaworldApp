class CreateApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :applies do |t|
      t.references :event, foreign_key: true
      t.references :ir_user, foreign_key: true
      t.boolean :flag
      t.text :comment

      t.timestamps
    end
  end
end
