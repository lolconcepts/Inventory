class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :vendor, foreign_key: true
      t.string :model
      t.date :eol
      t.date :eos
      t.float :cost_per_year
      t.string :serial_number
      t.references :location, foreign_key: true
      t.text :notes
      t.date :onboard
      t.date :decom
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
