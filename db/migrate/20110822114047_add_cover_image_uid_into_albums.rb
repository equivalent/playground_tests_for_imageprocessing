class AddCoverImageUidIntoAlbums < ActiveRecord::Migration
  def self.up
    add_column :albums, :cover_image_uid,  :string
  end

  def self.down
    remove_column :albums, :cover_image_uid
  end
end
