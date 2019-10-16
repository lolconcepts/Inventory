class CreateVendors < ActiveRecord::Migration[5.2]
  def up
    create_table :vendors do |t|
      t.string :name
      t.string :url
      t.string :telephone

      t.timestamps
    end
    Vendor.create(
    			:name => 'Calix',
    			:url => 'https://calix.force.com/CalixServiceStation/s/',
    			:telephone => '1-877-766-3500')
    Vendor.create(
				:name => 'Cisco',
				:url => 'https://mycase.cloudapps.cisco.com/case',
				:telephone => '1-800-553-2447')
    Vendor.create(
				:name => 'Nutanix',
				:url => 'https://www.nutanix.com/support-services/product-support/support-phone-numbers',
				:telephone => '1-855-688-2649')
    Vendor.create(
				:name => 'Ipswitch',
				:url => 'https://www.imailserver.com/email-support-ipswitch-imail',
				:telephone => '1-706-312-3550')
    Vendor.create(
				:name => 'Barracuda',
				:url => 'https://www.barracuda.com/support/index',
				:telephone => '1-408-342-5300')
    Vendor.create(
				:name => 'Commvault',
				:url => 'https://www.commvault.com/support',
				:telephone => '1-877-780-3077')
    Vendor.create(
				:name => 'CDW-G',
				:url => 'https://www.cdwg.com/',
				:telephone => '1-203-851-7060')
  end
  def down
  	drop_table :vendors
  end
end
