class Photo < ActiveRecord::Base
  belongs_to :album
  
    # Uses Paperclip gem to allow uploads to Photo model
    has_attached_file :image, :styles => { :medium => "800x600>", :thumb => "200x200>" },
                      :url  => "/assets/photos/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"
                      
    validates_attachment_presence :image

  #   before_save :destroy_image?
  # 
  #   def image_delete
  #     @image_delete ||= "0"
  #   end
  # 
  #   def image_delete=(value)
  #     @image_delete = value
  #   end
  # 
  # private
  #   def destroy_image?
  #     self.image.clear if @image_delete == "1"
  #   end
end
