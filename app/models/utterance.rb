class Utterance < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  acts_as_votable 

  has_attached_file :wav
  validates :wav, :attachment_content_type => { :content_type => ['audio/x-wav', 'audio/wav', 'audio/mp3' ]}
end
