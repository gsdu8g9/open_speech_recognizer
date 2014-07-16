class Utterance < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  acts_as_votable 

  attr_accessor :transcription
  
  mount_uploader :wav, WavUploader

  # has_attached_file :wav, :processors => [:silence_detection, :mfcc_extraction]

  # before_post_process :skip_for_invalid

  # def skip_for_invalid
  #   true
  #   #return false if the attarchment is invalid. 
  # end

  # validates :wav, :attachment_content_type => { :content_type => ['audio/x-wav', 'audio/wav' ]}
end
