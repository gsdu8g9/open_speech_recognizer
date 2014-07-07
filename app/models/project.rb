class Project < ActiveRecord::Base
  belongs_to :user
  has_many :utterances
  acts_as_votable 
end
