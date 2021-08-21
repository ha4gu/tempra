class CreateDummies < ActiveRecord::Migration[6.1]
  def change
    create_table :dummies do |t|
      t.string :title
      t.text :detail
      t.integer :stock
      t.date :ordered_on
      t.boolean :confirmed, null: false, default: false

      t.timestamps
    end
  end
end
