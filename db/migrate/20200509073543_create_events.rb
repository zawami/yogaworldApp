class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.text :place
      t.date :term
      t.integer :fee
      t.text :explanation
      t.text :comment
      t.text :comment2
      t.boolean :disclosed_page, default: false, null: false
      t.timestamps
    end
  end
end
