class CreateStatuses < ActiveRecord::Migration[5.2]
  def up
    create_table :statuses do |t|
      t.string :description

      t.timestamps
    end

    Status.create(
    			  :description => 'Active')
    Status.create(
    			  :description => 'Decomissioned')
    Status.create(
    			  :description => 'Pending Install')
    Status.create(
    			  :description => 'Pending Decom')
  end
  def down
  	drop_table :statuses
  end
end
