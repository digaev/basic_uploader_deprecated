class AttachmentUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    'uploads/'
  end
end
