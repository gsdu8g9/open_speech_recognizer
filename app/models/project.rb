class Project < ActiveRecord::Base
  belongs_to :user
  has_many :utterances, dependent: :destroy
  acts_as_votable 

  
end
