class CreateCarrierAlbums < ActiveRecord::Migration
  def self.up
    create_table :carrier_albums do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :carrier_albums
  end
end
