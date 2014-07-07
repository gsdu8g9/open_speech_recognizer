class Utterance < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  acts_as_votable 
end
