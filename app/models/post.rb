class Post < ActiveRecord::Base

  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  
  has_many :comments, :dependent => :destroy # deletes associated comments if Post is deleted
  has_many :tags
  
  # Nested attributes allow you to save attributes on associated records through the parent. 
  # By default nested attribute updating is turned off, you can enable it using the #accepts_nested_attributes_for class method. 
  # When you enable nested attributes an attribute writer is defined on the model.  
  ## The :allow_destroy option on the nested attribute declaration tells Rails to display a “remove” checkbox on the view
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
      :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  
end
