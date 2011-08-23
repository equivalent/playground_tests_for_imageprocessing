class AddImageToCarrierAlbum < ActiveRecord::Migration
  def self.up
    add_column :carrier_albums, :image, :string
  end

  def self.down
    remove_column :carrier_albums, :image
  end
end
