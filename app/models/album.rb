class Album < ActiveRecord::Base
  belongs_to :user
  
  has_many :photos, :dependent => :destroy # delete all photos if you delete the album
  
end
