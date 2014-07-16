# encoding: utf-8

class WavUploader < CarrierWave::Uploader::Base

  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Create different versions of your uploaded files:
  version :mfcc do
    process :extract_features
    def full_filename (for_file) 
      for_file.gsub(".wav",".mfcc") 
    end 

    def extract_features
      src = current_path.gsub("mfcc_","")
      dst = current_path
      `HCopy -A -D -T 1 -C ./htk/configs/HCopy.config #{src} #{dst}`
    end
  
  end

  version :no_silences do
    process :remove_silences
    
    def remove_silences
      src = current_path.gsub("no_silences_","")
      dst = current_path
      `sox #{src} #{dst} silence 1 0.1 1% -1 0.1 1%`
    end
  
  end


 

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(wav)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
