class CreateIpv4Addresses < ActiveRecord::Migration
  def change
    create_table :ipv4_addresses do |t|

      t.integer :node_id
      t.integer :int, :limit => 8

      t.timestamps
    end
  end
end
