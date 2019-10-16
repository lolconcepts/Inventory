class CreateLocations < ActiveRecord::Migration[5.2]
  def up
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
    Location.create(
                    :name => '55W',
                    :address => '55 Weir St',
                    :city => 'Taunton',
                    :state => 'MA',
                    :zip => '02780')
    Location.create(
                    :name => 'WWS',
                    :address => '550 West Water St',
                    :city => 'Taunton',
                    :state => 'MA',
                    :zip => '02780')
  end
  def down
    drop_table :locations
  end
end
