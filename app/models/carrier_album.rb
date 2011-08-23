class CarrierAlbum < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
end
