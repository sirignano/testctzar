class Picture < ActiveRecord::Base
  class AvatarUploader < CarrierWave::Uploader::Base
    storage :file
  end
end
