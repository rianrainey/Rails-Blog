class Album < ActiveRecord::Base
  belongs_to :user
  
  # Uses Paperclip gem to allow uploads to Album model
  has_attached_file :photo, :styles => { :medium => "800x600>", :thumb => "200x200>" },
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  
  # Add validation that user exists in db?
  #validates :user
end
