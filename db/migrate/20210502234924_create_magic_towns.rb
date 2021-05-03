class CreateMagicTowns < ActiveRecord::Migration[6.0]
  def change
    create_table :magic_towns do |t|
      t.string :name
      t.text :characteristics
      t.text :attractions
      t.text :festivities
      t.text :location
      t.integer "state_id", null: false
      t.index ["state_id"], name: "index_magic_towns_on_state_id"
      t.timestamps
    end
    add_foreign_key "magic_towns", "states"
  end
end
